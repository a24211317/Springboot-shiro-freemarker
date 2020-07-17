package com.hd.knowledge_management.knowledge_management.dao;

import com.hd.knowledge_management.knowledge_management.model.entity.FeedBack;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface FeedbackDao {

    List<FeedBack> allFeedbacks();

    FeedBack allFeedbacks(String fid);

    int delFeedback(int fid);
}
