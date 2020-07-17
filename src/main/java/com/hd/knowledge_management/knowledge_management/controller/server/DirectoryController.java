package com.hd.knowledge_management.knowledge_management.controller.server;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.model.entity.Directory;
import com.hd.knowledge_management.knowledge_management.service.DirectoryService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

@Controller
@Api(tags = "目录管理")
public class DirectoryController {

    @Autowired
    private DirectoryService directoryService;

    @ApiOperation(value = "通过目录id获得咨询对象", notes = "返回json字符串")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "rid", value = "目录id", dataType = "int", example = "7"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "")
    })
    @RequestMapping(value = "/getDirectoryByRid")
    @ResponseBody
    public String getDirectoryByRid(String rid) {
        return JSON.toJSONString(directoryService.getDirectoryByRid(rid));
    }


    @ApiIgnore
    @RequestMapping(value = "/addDiectory")
    public String addDiectory(Directory directory) {
        System.out.println(directory);
        return "";
    }

    @ApiOperation(value = "删除目录", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "did", value = "目录id", dataType = "int", example = "7"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/delDirectory")
    @ResponseBody
    public String delLevel(int did) {
        if (directoryService.delDirectory(did)) {
            return "success";
        } else {
            return "failed";
        }
    }


}
