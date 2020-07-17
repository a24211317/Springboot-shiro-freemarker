package com.hd.knowledge_management.knowledge_management.service;

import com.hd.knowledge_management.knowledge_management.model.entity.Terms;
import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;
import com.hd.knowledge_management.knowledge_management.model.vo.TermsVo;

import java.util.List;

public interface TermService {
    Boolean addTerm(TermsVo terms);

    List<TermsVo> getTermByDid(String did);
    List<TermsVo> getTermsByRid(String rid);

    Boolean delTerm(String tid);
}
