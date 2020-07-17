package com.hd.knowledge_management.knowledge_management.dao;

import com.hd.knowledge_management.knowledge_management.model.entity.Level;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LevelDao {

    List<Level> getLevelByLevel(int level);

    List<Level> getLevelByParentId(int pid);

    int delLevel(int lid);

    List<Level> allLevel();
}
