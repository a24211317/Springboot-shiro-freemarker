package com.hd.knowledge_management.knowledge_management.service.impl;

import com.hd.knowledge_management.knowledge_management.dao.UserDao;
import com.hd.knowledge_management.knowledge_management.model.entity.Manager;
import com.hd.knowledge_management.knowledge_management.model.entity.Users;
import com.hd.knowledge_management.knowledge_management.model.vo.ManagerVo;
import com.hd.knowledge_management.knowledge_management.model.vo.UserVo;
import com.hd.knowledge_management.knowledge_management.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public Object login(String user, String mobile, String password) {
        if (user.equals("users")) {
            return userDao.userLogin(mobile, password);
        }
        return userDao.managerLogin(mobile, password);
    }

    @Override
    public List<UserVo> allUser() {
        return userDao.allUser();
    }

    @Override
    public List<ManagerVo> allAdministrator() {
        return userDao.allAdministrator();
    }

    @Override
    public Boolean updManager(String mid, String mname, String password, int[] authority) {
        if (userDao.updManager(mid, mname, password) > 0 && userDao.delManagerAuthority(mid) > 0) {
            for (int i : authority) {
                if (userDao.addManagerAuthority(mid, authority[i - 1]) <= 0) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @Override
    public Boolean delManager(String mid) {
        return userDao.delManager(mid) > 0;
    }

    @Override
    public Boolean updateVIP(String uid) {
        return userDao.updateVIP(uid) > 0;
    }

    @Override
    public Boolean register(String uname, String password) {
        return userDao.register(uname, password) > 0;
    }

    @Override
    public Boolean addManager(String mname, String password, String mobile, int[] authority) {

        if (userDao.addManager(mname, password, mobile) > 0) {
            Manager manager = userDao.getManagerByMobile(mobile);
            for (int i : authority) {
                if (userDao.addManagerAuthority(manager.getMid() + "", authority[i - 1]) <= 0) {
                    return false;
                }
            }
            return true;
        }

        return false;
    }

    @Override
    public Manager getManagerByMobile(String mobile) {
        return userDao.getManagerByMobile(mobile);
    }
}
