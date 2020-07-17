package com.hd.knowledge_management.knowledge_management.service.impl;

import com.hd.knowledge_management.knowledge_management.dao.WebSettingsDao;
import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;
import com.hd.knowledge_management.knowledge_management.service.WebSettingsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class WebSettingsServiceImpl implements WebSettingsService {
    @Resource
    private WebSettingsDao webSettingsDao;


    @Override
    public WebSetting getWebSetting() {
        return webSettingsDao.getWebSetting();
    }

    @Override
    public Boolean updWebSetting(WebSetting webSetting) {
        return webSettingsDao.updWebSetting(webSetting)>0;
    }
}
