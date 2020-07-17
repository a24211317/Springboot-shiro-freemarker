package com.hd.knowledge_management.knowledge_management.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class RegulationDetailsVo {

    private String rid,rno,oneId,twoId;
    private String alias,version,rname,status,icon, pdfName,pdfLink,description,levelONE,levelTWO;
}
