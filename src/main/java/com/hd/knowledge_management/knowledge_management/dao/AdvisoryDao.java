package com.hd.knowledge_management.knowledge_management.dao;

import com.hd.knowledge_management.knowledge_management.model.entity.Advisory;
import com.hd.knowledge_management.knowledge_management.model.vo.AdvisoryDetailVo;
import com.hd.knowledge_management.knowledge_management.model.vo.AdvisoryVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface AdvisoryDao {

    List<AdvisoryVo> allAdvisoriess();

    int delAdvisory(String aid);

    AdvisoryDetailVo getAdvisorymangementByAid(String aid);
}
