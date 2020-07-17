package com.hd.knowledge_management.knowledge_management;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.mgt.DefaultSecurityManager;
import org.apache.shiro.realm.text.IniRealm;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class demo2 {
    IniRealm iniRealm = new IniRealm("classpath:user.ini");

    @Test
    public void test01() {
        DefaultSecurityManager securityManager=new DefaultSecurityManager();
        securityManager.setRealm(iniRealm);
        SecurityUtils.setSecurityManager(securityManager);
        Subject subject=SecurityUtils.getSubject();
        UsernamePasswordToken token=new UsernamePasswordToken("bbb","123");
        subject.login(token);
        System.out.println(subject.isAuthenticated());
        subject.checkRole("user");
        subject.checkPermissions("user:select");
    }
}
