package com.hd.knowledge_management.knowledge_management.controller.server;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;
import com.hd.knowledge_management.knowledge_management.model.vo.TermsVo;
import com.hd.knowledge_management.knowledge_management.service.TermService;
import com.hd.knowledge_management.knowledge_management.service.WebSettingsService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@Api(tags = "条款管理")
public class TermController {

    @Autowired
    private TermService termService;

    @ApiOperation(value = "新增条款", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "data", value = "TermsVo对象JSON字符串", dataType = "String", example = "{\"regulation\":\"1\",\"did\":\"1 \",\"tno\":\"123\",\"alias\":\"\",\"version\":\"\",\"title\":\"123\",\"content\":\"\",\"keyWord\":\"\"}"),
            @ApiImplicitParam(name = "content", value = "条款内容", dataType = "String", example = "10"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/addTerm")
    @ResponseBody
    public String addTerm(String data, String content) {
        TermsVo term = JSON.toJavaObject(JSON.parseObject(data), TermsVo.class);
        term.setContent(content);
        if (termService.addTerm(term)) {
            return "success";
        } else {

            return "failed";
        }
    }

    @ApiOperation(value = "通过法规id获得条款", notes = "json字符串")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "rid", value = "法规id", dataType = "String", example = "1"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "[{\"alias\":\"xxx\",\"content\":\"xxx\",\"tid\":\"xxx\",\"title\":\"xxx\",\"tno\":\"xxx\",\"version\":\"xxx\"}]")
    })
    @RequestMapping(value = "/getTermsByRid")
    @ResponseBody
    public String getTermsByRid(String rid) {
        System.out.println(JSON.toJSONString(termService.getTermsByRid(rid)));
        return JSON.toJSONString(termService.getTermsByRid(rid));
    }

    @ApiOperation(value = "删除条款", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "tid", value = "条款id", dataType = "String", example = "15"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/delTerm")
    @ResponseBody
    public String delTerm(String tid) {
        if (termService.delTerm(tid)) {
            return "success";
        }
        return "failed";
    }
}
