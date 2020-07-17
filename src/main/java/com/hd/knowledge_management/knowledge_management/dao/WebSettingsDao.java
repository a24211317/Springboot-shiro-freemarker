package com.hd.knowledge_management.knowledge_management.dao;

import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface WebSettingsDao {
    WebSetting getWebSetting();

    int updWebSetting(WebSetting webSetting);
}
