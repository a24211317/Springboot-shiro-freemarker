package com.hd.knowledge_management.knowledge_management.service;

import com.hd.knowledge_management.knowledge_management.model.entity.PageContent;

public interface PageContentService {

    Boolean addContent(PageContent pageContent);

    PageContent getPageContentByPname(String pname);
}
