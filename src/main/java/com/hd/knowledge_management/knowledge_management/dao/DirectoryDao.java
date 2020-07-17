package com.hd.knowledge_management.knowledge_management.dao;

import com.hd.knowledge_management.knowledge_management.model.vo.DirectoryVo;
import org.apache.ibatis.annotations.Mapper;


import java.util.List;

@Mapper
public interface DirectoryDao {

    List<DirectoryVo> getDirectoryByRid(String rid);

    List<DirectoryVo> getDirectorySubsetByDid(int did);

    DirectoryVo getDirectoryByDid(int did);

    int delDirectory(int did);
}
