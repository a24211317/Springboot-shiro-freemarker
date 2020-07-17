package com.hd.knowledge_management.knowledge_management.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RegulationsVo {

    private int rid;
    private int rno;
    private String alias;
    private String version;
    private String rname;
    private String status;
    private String level;

    public String getStatus() {
        if (status.equals("1")) {
            return "显示";
        } else {
            return "不显示";
        }
    }

}
