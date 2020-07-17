package com.hd.knowledge_management.knowledge_management.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Pagger {
    //每页记录数
    private int pageSize;
    //总纪录数
    private long rowCount;
    //总页数
    private int pageCount;
    //当前页索引
    private int pageIndex;
    //当前页码号
    private int pageNum;
    //是否首页
    private boolean firstPage;
    //是否末页
    private boolean lastPage;
    List data;

}
