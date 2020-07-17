package com.hd.knowledge_management.knowledge_management.dao;

import com.hd.knowledge_management.knowledge_management.model.entity.PageContent;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PageContentDao {

    int addContent(PageContent pageContent);

    PageContent getPageContentByPname(String pname);
}
