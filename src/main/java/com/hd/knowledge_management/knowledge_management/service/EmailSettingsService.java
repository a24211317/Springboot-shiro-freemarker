package com.hd.knowledge_management.knowledge_management.service;

import com.hd.knowledge_management.knowledge_management.model.entity.EmailSettings;
import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;

public interface EmailSettingsService {
    EmailSettings getEmailSettings();

    Boolean updEmailSettings(EmailSettings emailSettings);
}
