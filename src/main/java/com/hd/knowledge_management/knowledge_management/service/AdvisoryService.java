package com.hd.knowledge_management.knowledge_management.service;


import com.hd.knowledge_management.knowledge_management.model.entity.Advisory;
import com.hd.knowledge_management.knowledge_management.model.entity.Regulations;
import com.hd.knowledge_management.knowledge_management.model.vo.AdvisoryDetailVo;
import com.hd.knowledge_management.knowledge_management.model.vo.AdvisoryVo;
import com.hd.knowledge_management.knowledge_management.model.vo.DirectoryVo;

import java.util.List;

public interface AdvisoryService {

    List<AdvisoryVo> allAdvisoriess();

    Boolean delAdvisory(String aid);

    AdvisoryDetailVo getAdvisorymangementByAid(String aid);
}
