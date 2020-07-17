package com.hd.knowledge_management.knowledge_management.service.impl;

import com.hd.knowledge_management.knowledge_management.dao.TermDao;
import com.hd.knowledge_management.knowledge_management.dao.WebSettingsDao;
import com.hd.knowledge_management.knowledge_management.model.entity.Terms;
import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;
import com.hd.knowledge_management.knowledge_management.model.vo.TermsVo;
import com.hd.knowledge_management.knowledge_management.service.TermService;
import com.hd.knowledge_management.knowledge_management.service.WebSettingsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TermServiceImpl implements TermService {
    @Resource
    private TermDao termDao;


    @Override
    public Boolean addTerm(TermsVo terms) {
        return termDao.addTerm(terms)>0;
    }

    @Override
    public List<TermsVo> getTermByDid(String did) {
        return termDao.getTermByDid(did);
    }

    @Override
    public List<TermsVo> getTermsByRid(String rid) {
        return termDao.getTermsByRid(rid);
    }

    @Override
    public Boolean delTerm(String tid) {
        return termDao.delTerm(tid)>0;
    }
}
