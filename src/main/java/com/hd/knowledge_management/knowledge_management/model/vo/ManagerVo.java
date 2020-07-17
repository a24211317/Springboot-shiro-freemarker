package com.hd.knowledge_management.knowledge_management.model.vo;

import com.hd.knowledge_management.knowledge_management.model.entity.Authority;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Iterator;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ManagerVo {

    private String mid, mname, mobile, createTime, password, authority;
    private Set<Authority> authorityId;

    public String getAuthority() {
        authority = "";
        if (authorityId != null && authorityId.size() > 0) {
            for (Authority value : authorityId) {
                authority = authority + value.getAuthorityName() + " ";
            }

        } else {
            return "";
        }
        return authority;
    }

    public ManagerVo(String mname, String password, String mobile) {
        this.mname = mname;
        this.password = password;
        this.mobile = mobile;
    }
}
