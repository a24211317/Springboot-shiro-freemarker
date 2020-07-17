package com.hd.knowledge_management.knowledge_management.commons.Shiro;

import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;


@Configuration
public class ShiroConfig {
    @Bean
    public SecurityManager securityManager() {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(this.myRealm());
        return securityManager;
    }

    @Bean
    public MyRealm myRealm() {
        return new MyRealm();
    }

    @Bean
    public ShiroFilterFactoryBean webFilter() {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(securityManager());
        Map<String, String> filterChainMap = new LinkedHashMap<>();
        //放行静态资源
        filterChainMap.put("/assets/**", "anon");
        filterChainMap.put("/ckeditor/**", "anon");
        filterChainMap.put("/css/**", "anon");
        filterChainMap.put("/images/**", "anon");
        filterChainMap.put("/js/**", "anon");
        filterChainMap.put("/json/**", "anon");
        filterChainMap.put("/layui/**", "anon");
        //end
        filterChainMap.put("/logout", "logout");
        filterChainMap.put("/login", "anon");
        //管理员管理界面需要超级管理员登录
        filterChainMap.put("/toAdministratorManagement", "roles[2]");
        filterChainMap.put("/**", "authc");
        shiroFilterFactoryBean.setLoginUrl("/toLogin");
        //设置权限不足返回页面
        shiroFilterFactoryBean.setUnauthorizedUrl("/msq");
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainMap);
        return shiroFilterFactoryBean;
    }
}
