package com.hd.knowledge_management.knowledge_management.controller.server;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.service.LevelService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

@Controller
@Api(tags = "层级管理")
public class LevelController {

    @Autowired
    private LevelService levelService;
@ApiIgnore
    @RequestMapping(value = "/allLevel")
    public String allLevel(Model model) {
        model.addAttribute("allLevel", levelService.getLevel(1));
        return "level";
    }
    @ApiOperation(value = "删除组织", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "lid", value = "层级id", dataType = "String", example = "10"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/delLevel")
    @ResponseBody
    public String delLevel(int lid) {
        if (levelService.delLevel(lid)) {
            return "success";
        } else {
            return "failed";
        }
    }
    @ApiOperation(value = "根据lid查询下级组织", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "lid", value = "层级id", dataType = "String", example = "1"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "[{\"content\":\"行政程序规则\",\"level\":\"2\",\"lid\":5},{\"content\":\"航空器\",\"level\":\"2\",\"lid\":6},{\"content\":\"航空人员\",\"level\":\"2\",\"lid\":7}]"),
    })
    @RequestMapping(value = "/levelTwo")
    @ResponseBody
    public String levelTwo(int lid){
        return JSON.toJSONString(levelService.getLevelByParentId(lid));
    }
}
