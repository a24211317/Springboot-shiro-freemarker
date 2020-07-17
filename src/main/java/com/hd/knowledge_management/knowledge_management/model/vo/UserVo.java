package com.hd.knowledge_management.knowledge_management.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserVo {

    private String uid,uname, mobile, member, gender, createTime;

    public String getMobile() {
        if (mobile == null || mobile.equals("")) {
            return "未填写";
        } else {
            return mobile;
        }
    }

    public String getGender() {
        if (gender != null) {
            if (gender.equals("1")) {
                gender = "男";
            } else {
                gender = "女";
            }
            return gender;
        } else {
            return "未填写";
        }
    }
}
