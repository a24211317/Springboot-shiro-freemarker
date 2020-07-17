package com.hd.knowledge_management.knowledge_management.service;

import com.hd.knowledge_management.knowledge_management.model.entity.Manager;
import com.hd.knowledge_management.knowledge_management.model.vo.ManagerVo;
import com.hd.knowledge_management.knowledge_management.model.vo.UserVo;

import java.util.List;

public interface UserService {
    Object login(String user, String mobile, String password);

    List<UserVo> allUser();

    List<ManagerVo> allAdministrator();

    Boolean updManager(String mid, String mname, String password, int[] authority);

    Boolean delManager(String mid);

    Boolean updateVIP(String uid);

    Boolean register(String uname, String password);

    Boolean addManager(String mname, String password, String mobile, int[] authority);

    Manager getManagerByMobile(String mobile);
}
