package com.hd.knowledge_management.knowledge_management.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdvisoryVo {

    private String name, content, createTime, mobile,aid;

    public String getContent() {
        if (this.content.length()>20){
            this.content=content.substring(0,20)+"......";
        }
        return content;
    }
}
