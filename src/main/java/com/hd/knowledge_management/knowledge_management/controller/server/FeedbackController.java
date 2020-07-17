package com.hd.knowledge_management.knowledge_management.controller.server;

import com.hd.knowledge_management.knowledge_management.service.FeedbackService;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import springfox.documentation.annotations.ApiIgnore;

@Controller
@Api(tags = "反馈管理")
public class FeedbackController {
@Autowired
private FeedbackService feedbackService;
@ApiIgnore
    @RequestMapping(value = "toFeedback")
    public String toFeedback(Model model, @RequestParam(value = "fid",defaultValue = "",required = false)String fid) {
    model.addAttribute("allFeedbacks", feedbackService.allFeedbacks(fid));
        return "feedback";
    }
    @ApiOperation(value = "删除反馈内容", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "fid", value = "反馈id", dataType = "int", example = "1"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/delFeedback")
    @ResponseBody
    public String delFeedback(int fid) {
        if (feedbackService.delFeedback(fid)) {
            return "success";
        } else {
            return "failed";
        }
    }
}
