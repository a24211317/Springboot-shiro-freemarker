package com.hd.knowledge_management.knowledge_management.dao;


import com.hd.knowledge_management.knowledge_management.model.entity.Regulations;
import com.hd.knowledge_management.knowledge_management.model.vo.RegulationDetailsVo;
import com.hd.knowledge_management.knowledge_management.model.vo.RegulationsVo;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface RegulationDao {

    List<RegulationsVo> allRegulations(String lid);

    int addRegulation(Regulations regulations);

    RegulationDetailsVo getRegulationByRid(String rid);

    int delRegulation(int rid);

    int updRegulation(Regulations regulations);
}
