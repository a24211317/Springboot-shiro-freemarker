package com.hd.knowledge_management.knowledge_management.controller.server;


import com.hd.knowledge_management.knowledge_management.model.entity.Regulations;
import com.hd.knowledge_management.knowledge_management.service.LevelService;
import com.hd.knowledge_management.knowledge_management.service.RegulationService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

import javax.annotation.Resource;

import static com.hd.knowledge_management.knowledge_management.commons.JSON.JSONUtil.getRegulation;

@Controller
@Api(tags = "法规管理")
public class RegulationController {
    @Autowired
    private RegulationService regulationService;
    @Autowired
    private LevelService levelService;

    @ApiOperation(value = "新增法规", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "regulations", value = "Regulations对象JSON字符串", dataType = "String", example = "{\"rno\":\"1\",\"alias\":\"\",\"version\":\"\",\"rname\":\"1\",\"levelOne\":\"1\",\"levelId\":\"5 \",\"status\":\"1\",\"icon\":\"http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc\",\"file\":\"\",\"pdfName\":\"\",\"pdfLink\":\"\",\"description\":\"\"}"),
            @ApiImplicitParam(name = "description", value = "版本说明", dataType = "String", example = "10"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/addRegulation")
    @ResponseBody
    public String addRegulation(String regulations, String description) {
        Regulations addRegulation = getRegulation(regulations);
        addRegulation.setDescription(description);
        if (regulationService.addRegulation(addRegulation)) {
            return "success";
        }
        return "error";
    }

    @ApiIgnore
    @RequestMapping(value = "/toEditRegulation")
    public String toEditRegulation(Model model, String rid) {
        model.addAttribute("levelOne", levelService.getLevel(1));
        model.addAttribute("regulation", regulationService.getRegulationByRid(rid));
        return "editRegulation";
    }

    @ApiOperation(value = "删除法规", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "rid", value = "法规id", dataType = "String", example = "17"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/delRegulation")
    @ResponseBody
    public String delRegulation(int rid) {
        if (regulationService.delRegulation(rid)) {
            return "success";
        } else {
            return "failed";
        }
    }

    @ApiOperation(value = "修改法规", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "regulations", value = "Regulations对象JSON字符串", dataType = "String", example = "{\"rno\":\"1\",\"alias\":\"11\",\"version\":\"\",\"rname\":\"1\",\"levelOne\":\"1\",\"levelId\":\"5\",\"status\":\"1\",\"icon\":\"http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc\",\"rid\":\"21\",\"file\":\"\",\"pdfName\":\"\",\"pdfLink\":\"\",\"description\":\"1\"}"),
            @ApiImplicitParam(name = "description", value = "版本说明", dataType = "String", example = "10"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/updRegulation")
    @ResponseBody
    public String updRegulation(String regulations, String description) {
        Regulations r = getRegulation(regulations);
        r.setDescription(description);
        if (regulationService.updRegulation(r)) {
            return "success";
        } else {
            return "failed";
        }
    }

}
