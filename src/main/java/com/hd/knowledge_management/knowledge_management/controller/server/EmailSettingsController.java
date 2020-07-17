package com.hd.knowledge_management.knowledge_management.controller.server;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.model.entity.EmailSettings;
import com.hd.knowledge_management.knowledge_management.service.EmailSettingsService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

@Controller
@Api(tags = "邮箱设置")
public class EmailSettingsController {

    @Autowired
    private EmailSettingsService EmailSettingsService;

    @ApiIgnore
    @RequestMapping(value = "/toEmailSettings")
    public String toEmailSettings(Model model) {
        model.addAttribute("emailSetting", EmailSettingsService.getEmailSettings());
        return "emailSettings";
    }

    @ApiOperation(value = "修改邮箱设置", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "data", value = "EmailSettings对象字符串", dataType = "String", example = "{\"email\":\" 123 \",\"server\":\" 123 \",\"username\":\" 123 \",\"pwd\":\" 123 \",\"send\":\" 1 \",\"loginytype\":\"LOGIN认证\"}"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/updemailSettings")
    @ResponseBody
    public String updemailSettings(String data) {
        EmailSettings emailSettings = JSON.toJavaObject(JSON.parseObject(data), EmailSettings.class);
        if (EmailSettingsService.updEmailSettings(emailSettings)) {
            return "success";
        } else {

            return "failed";
        }

    }
}
