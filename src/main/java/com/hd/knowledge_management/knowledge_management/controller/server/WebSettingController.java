package com.hd.knowledge_management.knowledge_management.controller.server;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.model.entity.Regulations;
import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;
import com.hd.knowledge_management.knowledge_management.service.WebSettingsService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.ServletContext;

@Controller
@Api(tags = "网站设置")
public class WebSettingController {

    @Autowired
    private WebSettingsService webSettingsService;
    @Autowired
    private ServletContext servletContext;
@ApiIgnore
    @RequestMapping(value = "/toWebSettings")
    public String toWebSettings(Model model) {
        model.addAttribute("webSetting", webSettingsService.getWebSetting());
        return "webSettings";
    }
    @ApiOperation(value = "修改网站设置", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "data", value = "webSetting对象字符串", dataType = "String", example = "{\"status\":\"1\",\"title\":\"航多知识管理系统\",\"domain\":\"www.hd.com\",\"logo\":\"\",\"file\":\"\",\"email\":\"1234576@hd.com\",\"language\":\"简体中文\"}"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/updWebSetting")
    @ResponseBody
    public String updWebSetting(String data) {
        WebSetting webSetting = JSON.toJavaObject(JSON.parseObject(data), WebSetting.class);
        if (webSettingsService.updWebSetting(webSetting)) {
            servletContext.setAttribute("title", webSetting.getTitle());
            return "success";
        } else {
            return "failed";
        }

    }
}
