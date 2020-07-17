package com.hd.knowledge_management.knowledge_management.api.swagger;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author
 * @version V1.0
 * @Project: token_demo
 * @Package com.sjx.token_demo.utils.swagger
 * @Description: swagger配置类
 * @date 2020 年 01 月 06 10:22 星期一
 */
@Configuration
@EnableSwagger2
public class Swagger2 {

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                // 创建api基本信息
                .apiInfo(apiInfo())
                // 返回一个ApiSelectorBuilder实例用来控制哪些接口暴露给Swagger来展现，
                // 采用指定扫描的包路径来定义，
                // Swagger会扫描该包下所有Controller定义的API，
                // 并产生文档内容（除了被@ApiIgnore指定的请求）。
                .select()
                // 扫描controller包
                .apis(RequestHandlerSelectors.basePackage("com.hd.knowledge_management.knowledge_management.controller"))
                // 设置路径筛选
                .paths(PathSelectors.any())
                // 构建
                .build();
    }

    public ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                // api标题
                .title("航多管理系统")
                // api信息
                .contact(new Contact("xxx", null, "xxx.@xxx.com"))
                // 版本
                .version("1.2.4")
                // 描述
                // 构建
                .build();
    }
}