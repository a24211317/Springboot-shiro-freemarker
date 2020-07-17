package com.hd.knowledge_management.knowledge_management.service.impl;


import com.hd.knowledge_management.knowledge_management.dao.RegulationDao;
import com.hd.knowledge_management.knowledge_management.model.entity.Regulations;
import com.hd.knowledge_management.knowledge_management.model.vo.RegulationDetailsVo;
import com.hd.knowledge_management.knowledge_management.model.vo.RegulationsVo;
import com.hd.knowledge_management.knowledge_management.service.RegulationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RegulationServiceImpl implements RegulationService {

    @Resource
    private RegulationDao regulationDao;

    @Override
    public List<RegulationsVo> allRegulations(String lid) {
        return regulationDao.allRegulations(lid);
    }

    @Override
    public Boolean addRegulation(Regulations regulations) {
        return regulationDao.addRegulation(regulations) > 0;
    }

    @Override
    public RegulationDetailsVo getRegulationByRid(String rid) {
        return regulationDao.getRegulationByRid(rid);
    }

    @Override
    public Boolean delRegulation(int rid) {
        if(regulationDao.delRegulation(rid)>0){
            return true;
        }
        return false;
    }

    @Override
    public Boolean updRegulation(Regulations regulations) {
        if(regulationDao.updRegulation(regulations)>0){
            return true;
        }
        return false;
    }
}
