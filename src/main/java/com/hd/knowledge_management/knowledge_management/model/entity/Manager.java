package com.hd.knowledge_management.knowledge_management.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author 王雨
 * @version 1.0
 * @date 2020/1/5 12:51
 * @package cn.hd.knowledgebase.entity
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Manager {
    private Integer mid;
    private String mname;
    private String mobile;
    private String password;
    private String createTime;
    private Integer status;
}
