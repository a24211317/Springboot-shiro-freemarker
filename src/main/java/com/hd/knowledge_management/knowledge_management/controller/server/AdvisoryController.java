package com.hd.knowledge_management.knowledge_management.controller.server;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.service.AdvisoryService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

@Controller
@Api(tags = "咨询管理")
public class AdvisoryController {

    @Autowired
    private AdvisoryService advisoryService;

    @ApiIgnore
    @RequestMapping(value = "/toAdvisory")
    public String toAdvisory(Model model) {
        model.addAttribute("advisoriess", advisoryService.allAdvisoriess());
        return "advisorymanagement";
    }

    @ApiOperation(value = "根据id删除咨询", notes = "返回状态码字符串")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "aid", value = "咨询id", dataType = "String", example = "7"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/delAdvisory")
    @ResponseBody
    public String delAdvisory(String aid) {
        if (advisoryService.delAdvisory(aid)) {
            return "success";
        }
        return "failed";
    }

    @ApiOperation(value = "通过咨询id获得咨询对象", notes = "json字符串")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "aid", value = "咨询id", dataType = "String", example = "7"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "{\"content\":\"xxxxxxxxxx\",\"mobile\":\"xxxxxxxxxx\",\"name\":\"xxxxxxxxxx\",\"termName\":\"xxxxxxxxxx\"}")
    })
    @RequestMapping(value = "getAdvisorymangementByAid")
    @ResponseBody
    public String getAdvisorymangementByAid(String aid){
        return JSON.toJSONString(advisoryService.getAdvisorymangementByAid(aid));
    }
}
