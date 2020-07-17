package com.hd.knowledge_management.knowledge_management.controller.wechat;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.commons.redis.RedisUtils;
import com.hd.knowledge_management.knowledge_management.model.entity.Users;
import com.hd.knowledge_management.knowledge_management.model.vo.ManagerVo;
import com.hd.knowledge_management.knowledge_management.service.RegulationService;
import com.hd.knowledge_management.knowledge_management.service.TermService;
import com.hd.knowledge_management.knowledge_management.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping(value = "/wx")
@ApiIgnore
public class WeChatController {
    @Autowired
    private TermService termService;
    @Autowired
    private RegulationService regulationService;
    @Autowired
    private UserService userService;
    @Autowired
    private RedisUtils redisUtils;

    @PostMapping(value = "/wxAllRegulations")
    public String allRegulations() {

        return JSON.toJSONString(regulationService.allRegulations(""));
    }

    @PostMapping(value = "/wxGetTermByDid")
    public String getTermByDid(String did) {
        return JSON.toJSONString(termService.getTermByDid(did));
    }

    @PostMapping(value = "/login")
    public String login(String mobile, String password) {
        Users user = (Users) userService.login("users", mobile, password);
        if (user != null) {
            String token = redisUtils.createToken(user);
            redisUtils.set(token,JSON.toJSONString(user), 6000);
            return token;
        }
        return "failed";
    }

    @PostMapping(value = "/getUserByToken")
    public String getUserByToken(String token) {
        return redisUtils.get(token).toString();
    }

    @PostMapping(value = "/register")
    public String register(String uname, String password) {
        if (userService.register(uname, password)) {
            return "success";
        }
        return "failed";
    }
}
