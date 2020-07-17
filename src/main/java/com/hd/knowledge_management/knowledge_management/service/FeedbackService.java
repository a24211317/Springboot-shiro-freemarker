package com.hd.knowledge_management.knowledge_management.service;

import com.hd.knowledge_management.knowledge_management.model.entity.FeedBack;

import java.util.List;

public interface FeedbackService {


    List<FeedBack> allFeedbacks(String fid);

    Boolean delFeedback(int fid);
}
