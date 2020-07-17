package com.hd.knowledge_management.knowledge_management.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class EmailSettings {

    private int eid;
    private String email, server, username, pwd, send, loginytype;


}
