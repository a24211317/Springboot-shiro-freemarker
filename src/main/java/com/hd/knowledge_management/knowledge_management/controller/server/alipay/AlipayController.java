package com.hd.knowledge_management.knowledge_management.controller.server.alipay;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.alipay.api.response.AlipayTradePagePayResponse;
import com.alipay.api.response.AlipayTradeQueryResponse;
import com.hd.knowledge_management.knowledge_management.commons.alipay.AlipayConfig;
import com.hd.knowledge_management.knowledge_management.service.UserService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@Controller
@ApiIgnore
public class AlipayController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/toPay")
    @ResponseBody
    public void toPay(HttpServletResponse httpResponse, String uid) throws AlipayApiException, IOException {
        AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gatewayUrl, AlipayConfig.app_id, AlipayConfig.merchant_private_key, "json", AlipayConfig.charset, AlipayConfig.alipay_public_key, AlipayConfig.sign_type);
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();//创建API对应的request
        String orderID = new Date().getTime() + "" + (int) (Math.random() * 10000);
        alipayRequest.setReturnUrl(AlipayConfig.return_url);
        alipayRequest.setNotifyUrl(AlipayConfig.notify_url);//在公共参数中设置回跳和通知地址
        alipayRequest.setBizContent("{" +
                "    \"out_trade_no\":\"" + orderID + "\"," +
                "    \"product_code\":\"FAST_INSTANT_TRADE_PAY\"," +
                "    \"total_amount\":888," +
                "    \"passback_params\":\"" + uid + "\"," +
                "    \"subject\":\"会员充值\"" +
                "}");//填充业务参数
        String result = alipayClient.pageExecute(alipayRequest).getBody();
        httpResponse.setContentType("text/html;charset=" + AlipayConfig.charset);
        httpResponse.getWriter().write(result);//直接将完整的表单html输出到页面
        httpResponse.getWriter().flush();
        httpResponse.getWriter().close();
    }

    @RequestMapping(value = "/paySuccess")
    public String paySuccess() {
        return "redirect:/allUser";
    }

    @PostMapping(value = "/notifyPaySuccess")
    @ResponseBody
    public String notifyPaySuccess(HttpServletRequest request) throws UnsupportedEncodingException {
        String trade_status = new String(request.getParameter("trade_status").getBytes("ISO-8859-1"), "UTF-8");
        String uid = new String(request.getParameter("passback_params").getBytes("ISO-8859-1"), "UTF-8");
        if (trade_status.equals("TRADE_SUCCESS")) {
           userService.updateVIP(uid);
            return "success";
        } else {
            return "error";
        }
    }
}
