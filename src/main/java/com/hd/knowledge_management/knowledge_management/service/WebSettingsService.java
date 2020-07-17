package com.hd.knowledge_management.knowledge_management.service;

import com.hd.knowledge_management.knowledge_management.model.entity.WebSetting;

public interface WebSettingsService {
    WebSetting getWebSetting();

    Boolean updWebSetting(WebSetting webSetting);
}
