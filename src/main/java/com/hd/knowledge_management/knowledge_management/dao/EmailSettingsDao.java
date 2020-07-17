package com.hd.knowledge_management.knowledge_management.dao;

import com.hd.knowledge_management.knowledge_management.model.entity.EmailSettings;
import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface EmailSettingsDao {
    EmailSettings getEmailSettings();

    int updEmailSettings(EmailSettings emailSettings);
}
