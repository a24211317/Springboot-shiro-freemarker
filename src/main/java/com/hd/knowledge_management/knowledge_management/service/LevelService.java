package com.hd.knowledge_management.knowledge_management.service;

import com.hd.knowledge_management.knowledge_management.model.entity.Level;
import com.hd.knowledge_management.knowledge_management.model.vo.LevelVo;

import java.util.List;
import java.util.Map;

public interface LevelService {
    List<LevelVo> getLevel(int level);

    List<Level> getLevelByParentId(int level);

    Boolean delLevel(int lid);

    Map<String ,Object> allLevel();
}
