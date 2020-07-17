package com.hd.knowledge_management.knowledge_management.controller.font;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.service.FeedbackService;
import com.qiniu.util.Json;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FontController {
    @Autowired
    private FeedbackService feedbackService;


    @RequestMapping("/findAllFeedBack")
    public String findAllFeedBack(){
        return JSON.toJSONString(feedbackService.allFeedbacks(null));
    }
}
