package com.hd.knowledge_management.knowledge_management.service;


import com.hd.knowledge_management.knowledge_management.model.vo.DirectoryVo;

import java.util.List;

public interface DirectoryService {
    List<DirectoryVo> getDirectoryByRid(String rid);

    Boolean delDirectory(int did);
}
