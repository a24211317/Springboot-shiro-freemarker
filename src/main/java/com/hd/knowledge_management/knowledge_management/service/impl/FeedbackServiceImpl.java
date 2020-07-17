package com.hd.knowledge_management.knowledge_management.service.impl;

import com.hd.knowledge_management.knowledge_management.dao.FeedbackDao;
import com.hd.knowledge_management.knowledge_management.model.entity.FeedBack;
import com.hd.knowledge_management.knowledge_management.service.FeedbackService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FeedbackServiceImpl implements FeedbackService {
    @Resource
    private FeedbackDao feedbackDao;

    @Override
    public List<FeedBack> allFeedbacks(String fid) {
        return feedbackDao.allFeedbacks();
    }

    @Override
    public Boolean delFeedback(int fid) {
        if(feedbackDao.delFeedback(fid)>0){
            return true;
        }
        return false;
    }
}
