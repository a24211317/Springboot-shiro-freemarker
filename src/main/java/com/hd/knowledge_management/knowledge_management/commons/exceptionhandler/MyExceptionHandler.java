package com.hd.knowledge_management.knowledge_management.commons.exceptionhandler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class MyExceptionHandler  {
    @ExceptionHandler(value = Exception.class)
    public String exceptionhandler(Exception e){
        System.out.println("捕获异常");
        System.out.println(e);
        return "error";
    }
}
