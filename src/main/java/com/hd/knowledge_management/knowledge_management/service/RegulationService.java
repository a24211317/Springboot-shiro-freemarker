package com.hd.knowledge_management.knowledge_management.service;


import com.hd.knowledge_management.knowledge_management.model.entity.Regulations;
import com.hd.knowledge_management.knowledge_management.model.vo.RegulationDetailsVo;
import com.hd.knowledge_management.knowledge_management.model.vo.RegulationsVo;

import java.util.List;
import java.util.Map;

public interface RegulationService {
    List<RegulationsVo> allRegulations(String lid);

    Boolean addRegulation(Regulations regulations);

    RegulationDetailsVo getRegulationByRid(String rid);

    Boolean delRegulation(int rid);

    Boolean updRegulation(Regulations regulations);


}
