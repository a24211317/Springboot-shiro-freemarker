package com.hd.knowledge_management.knowledge_management;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.hd.knowledge_management.knowledge_management.dao")
public class KnowledgeManagementApplication {

    public static void main(String[] args) {
        SpringApplication.run(KnowledgeManagementApplication.class, args);
    }

}
