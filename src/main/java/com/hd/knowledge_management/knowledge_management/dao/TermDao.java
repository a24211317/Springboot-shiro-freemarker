package com.hd.knowledge_management.knowledge_management.dao;

import com.hd.knowledge_management.knowledge_management.model.entity.Terms;
import com.hd.knowledge_management.knowledge_management.model.vo.TermsVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TermDao {

    int addTerm(TermsVo terms);
    int delTerm(String  tid);

    List<TermsVo> getTermByDid(String did);
    List<TermsVo> getTermsByRid(String rid);
}
