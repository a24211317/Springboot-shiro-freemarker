package com.hd.knowledge_management.knowledge_management.model.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Regulations {

    private int rid;
    private int rno;
    private String alias;
    private String version;
    private String rname;
    private String status;
    private String icon;
    private String levelId;
    private String pdfName;
    private String pdfLink;
    private String description;
    private Date createTime;
    private Date updateTime;
}
