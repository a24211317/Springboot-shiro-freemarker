package com.hd.knowledge_management.knowledge_management.model.entity;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Advisory {

    private int aid;
    private int uid;
    private String name;
    private String mobile;
    private String terms;
    private String content;
    private String email;
    private String company;
    private String wechat;
    private int status;
    private Date createTime;
    private Date updateTime;
}
