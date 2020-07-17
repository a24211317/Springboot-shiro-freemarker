package com.hd.knowledge_management.knowledge_management.controller.server;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.commons.websetting.ApplicationParams;
import com.hd.knowledge_management.knowledge_management.model.entity.PageContent;
import com.hd.knowledge_management.knowledge_management.service.PageContentService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import springfox.documentation.annotations.ApiIgnore;

@Controller
@Api(tags = "服务协议/公司介绍/短信设置")
public class PageContentController {
    @Autowired
    private PageContentService pageContentService;
    @Autowired
    private ApplicationParams applicationParams;

    @ApiIgnore
    @RequestMapping(value = "/toSMSSettings")
    public String toSMSSettings(Model model) {
        model.addAttribute("pageContent", applicationParams.apikey);
        return "SMSSettings";
    }
    @RequestMapping(value = "/fingSMSSetting")
    @ResponseBody
    public String fingSMSSetting(){
        return JSON.toJSONString(applicationParams.apikey);
    }

    @ApiOperation(value = "设置服务协议 公司介绍 短信", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "pname", value = "1=服务协议 2=公司介绍 3=短信", dataType = "String", example = "3"),
            @ApiImplicitParam(name = "content", value = "设置内容", dataType = "String", example = "10"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/addContent")
    @ResponseBody
    public String addContent( PageContent pageContent) {
        System.out.println(pageContent);
        if (pageContentService.addContent(pageContent)) {
            if (pageContent.getPname().equals("3")) {
                applicationParams.apikey = pageContent.getContent();
            }
            return "success";
        }
        return "failed";
    }
}
