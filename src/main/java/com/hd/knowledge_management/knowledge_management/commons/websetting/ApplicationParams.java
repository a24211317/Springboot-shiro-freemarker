package com.hd.knowledge_management.knowledge_management.commons.websetting;

import com.hd.knowledge_management.knowledge_management.dao.WebSettingsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;

import javax.annotation.Resource;
import javax.servlet.ServletContext;


@Component
public class ApplicationParams implements ServletContextAware {

    public static String apikey="123456";

    @Resource
    private WebSettingsDao webSettingsDao;
    @Override
    public void setServletContext(ServletContext servletContext) {
        String title=webSettingsDao.getWebSetting().getTitle();
        servletContext.setAttribute("title", title);
    }
}
