package com.hd.knowledge_management.knowledge_management.dao;

import com.hd.knowledge_management.knowledge_management.model.entity.Manager;
import com.hd.knowledge_management.knowledge_management.model.entity.Users;
import com.hd.knowledge_management.knowledge_management.model.vo.ManagerVo;
import com.hd.knowledge_management.knowledge_management.model.vo.UserVo;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;


@Mapper
public interface UserDao {
    ManagerVo managerLogin(String mobile, String password);

    Users userLogin(String uname, String password);

    List<UserVo> allUser();

    List<ManagerVo> allAdministrator();

    int updManager(String mid, String mname, String password);

    int delManager(String mid);

    int updateVIP(String uid);

    int register(String uname, String password);

    int delManagerAuthority(String mid);

    int addManagerAuthority(String mid, int authority);

    int addManager(String mname, String password, String mobile);


    Manager getManagerByMobile(String mobile);
}
