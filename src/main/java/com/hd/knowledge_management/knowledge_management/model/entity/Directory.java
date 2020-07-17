package com.hd.knowledge_management.knowledge_management.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Directory {

    private int did;
    private String dname;
    private int parentId;
    private int level;
    private int sort;
    private int rid;
    private int status;
    private java.sql.Timestamp createTime;
    private java.sql.Timestamp updateTime;


}
