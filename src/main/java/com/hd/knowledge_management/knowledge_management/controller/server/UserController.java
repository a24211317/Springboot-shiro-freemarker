package com.hd.knowledge_management.knowledge_management.controller.server;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.hd.knowledge_management.knowledge_management.model.entity.Manager;
import com.hd.knowledge_management.knowledge_management.model.entity.Regulations;
import com.hd.knowledge_management.knowledge_management.model.entity.Users;
import com.hd.knowledge_management.knowledge_management.model.vo.ManagerVo;
import com.hd.knowledge_management.knowledge_management.service.UserService;
import io.swagger.annotations.*;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import springfox.documentation.annotations.ApiIgnore;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;

@Controller
@Api(tags = "用户/管理员管理")
public class UserController {

    @Autowired
    private UserService userService;

    @ApiOperation(value = "管理员登录", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "account", value = "账号", dataType = "String", example = "admin"),
            @ApiImplicitParam(name = "password", value = "密码", dataType = "String", example = "123456"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/login")
    @ResponseBody
    public String login(String mobile, String password) {
        UsernamePasswordToken token = new UsernamePasswordToken(mobile, password);
        Subject currenUser = SecurityUtils.getSubject();
        currenUser.login(token);
        System.out.println(currenUser.isAuthenticated());
        if (currenUser.isAuthenticated()) {
            return "success";
        }
        return "failed";
    }

    @ApiIgnore
    @RequestMapping(value = "/allUser")
    public String allUser(Model model) {
        model.addAttribute("users", userService.allUser());
        return "usermanagement";
    }

    @ApiIgnore
    @RequestMapping(value = "/toAdministratorManagement")
    public String toAdministratorManagement(Model model) {
        model.addAttribute("allManager", userService.allAdministrator());
        return "administratormanagement";
    }

    @ApiOperation(value = "修改管理员信息", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "mid", value = "管理员id", dataType = "String", example = "9"),
            @ApiImplicitParam(name = "mname", value = "管理员姓名", dataType = "String", example = "admin"),
            @ApiImplicitParam(name = "password", value = "密码", dataType = "String", example = "123456"),
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/updManager")
    @ResponseBody
    public String updManager(String mid, String mname, String password, int[] authority) {
        if (userService.updManager(mid, mname, password, authority)) {
            return "success";
        }
        return "failed";
    }

    @ApiOperation(value = "删除管理员", notes = "返回字符串状态码")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "mid", value = "管理员id", dataType = "String", example = "9")
    })
    @ApiResponses({
            @ApiResponse(code = 200, message = "success"),
            @ApiResponse(code = 500, message = "failed")
    })
    @RequestMapping(value = "/delManager")
    @ResponseBody
    public String delManager(String mid) {
        if (userService.delManager(mid)) {
            return "success";
        }
        return "failed";
    }

    @RequestMapping(value = "/addManager")
    @ResponseBody
    public String addManager(String mname, String password, String mobile, int[] authority) {
        if (userService.addManager(mname, password, mobile, authority)) {
            return "success";
        }
        return "failed";
    }

}
