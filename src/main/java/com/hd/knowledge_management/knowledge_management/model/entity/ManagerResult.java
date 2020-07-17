package com.hd.knowledge_management.knowledge_management.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author 王雨
 * @version 1.0
 * @date 2020/1/5 13:39
 * @package cn.hd.knowledgebase.entity
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ManagerResult {
    private Integer code;
    private String message;
    private String data;
}
