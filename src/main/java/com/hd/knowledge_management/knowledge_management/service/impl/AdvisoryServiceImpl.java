package com.hd.knowledge_management.knowledge_management.service.impl;

import com.hd.knowledge_management.knowledge_management.dao.AdvisoryDao;
import com.hd.knowledge_management.knowledge_management.model.entity.Advisory;
import com.hd.knowledge_management.knowledge_management.model.entity.Regulations;
import com.hd.knowledge_management.knowledge_management.model.vo.AdvisoryDetailVo;
import com.hd.knowledge_management.knowledge_management.model.vo.AdvisoryVo;
import com.hd.knowledge_management.knowledge_management.service.AdvisoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class AdvisoryServiceImpl implements AdvisoryService {

    @Resource
    private AdvisoryDao advisoryDao;

    @Override
    public List<AdvisoryVo> allAdvisoriess() {
        return advisoryDao.allAdvisoriess();
    }

    @Override
    public Boolean delAdvisory(String aid) {
        return advisoryDao.delAdvisory(aid) > 0;
    }

    @Override
    public AdvisoryDetailVo getAdvisorymangementByAid(String aid) {

        return advisoryDao.getAdvisorymangementByAid(aid);
    }
}
