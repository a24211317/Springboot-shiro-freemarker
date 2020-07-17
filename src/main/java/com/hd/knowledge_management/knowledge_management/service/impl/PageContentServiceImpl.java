package com.hd.knowledge_management.knowledge_management.service.impl;

import com.hd.knowledge_management.knowledge_management.dao.PageContentDao;
import com.hd.knowledge_management.knowledge_management.model.entity.PageContent;
import com.hd.knowledge_management.knowledge_management.service.PageContentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class PageContentServiceImpl implements PageContentService {

    @Resource
    private PageContentDao pageContentDao;
    @Override
    public Boolean addContent(PageContent pageContent) {
        return pageContentDao.addContent(pageContent)>0;
    }

    @Override
    public PageContent getPageContentByPname(String pname) {
        return pageContentDao.getPageContentByPname(pname);
    }
}
