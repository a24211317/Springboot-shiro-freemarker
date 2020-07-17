package com.hd.knowledge_management.knowledge_management.service.impl;

import com.hd.knowledge_management.knowledge_management.dao.EmailSettingsDao;
import com.hd.knowledge_management.knowledge_management.dao.WebSettingsDao;
import com.hd.knowledge_management.knowledge_management.model.entity.EmailSettings;
import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;
import com.hd.knowledge_management.knowledge_management.service.EmailSettingsService;
import com.hd.knowledge_management.knowledge_management.service.WebSettingsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class EmailSettingsServiceImpl implements EmailSettingsService {
    @Resource
    private EmailSettingsDao emailSettingsDao;


    @Override
    public EmailSettings getEmailSettings() {
        return emailSettingsDao.getEmailSettings();
    }

    @Override
    public Boolean updEmailSettings(EmailSettings emailSettings) {
        return emailSettingsDao.updEmailSettings(emailSettings) > 0;
    }

}
