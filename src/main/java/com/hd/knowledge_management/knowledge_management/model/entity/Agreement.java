package com.hd.knowledge_management.knowledge_management.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author 马泽朋
 * @version 1.0
 * @date 2020/1/7 下午 6:01
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Agreement {
    private int pid;
    private String pname,content,create_time,update_time;

}
