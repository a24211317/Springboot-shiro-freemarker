package com.hd.knowledge_management.knowledge_management.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DirectoryVo {
    private String dname;
    private int did, parentId, level, sort;
}
