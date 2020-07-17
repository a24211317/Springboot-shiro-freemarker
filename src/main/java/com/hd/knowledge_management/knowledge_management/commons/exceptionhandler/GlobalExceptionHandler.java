package com.hd.knowledge_management.knowledge_management.commons.exceptionhandler;

//import org.mybatis.logging.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@ControllerAdvice
public class GlobalExceptionHandler {

//    private static final logger = getLogger

    /*
    * 处理自己定义的异常
    *
    * */
    @ExceptionHandler(value = HDKSException.class)
    @ResponseBody
    public ResultBody bizExceptionDeal(HttpServletRequest request,HDKSException e){
        System.out.println("发生业务异常：");
        System.out.println(e.getErrorCode());
        return ResultBody.error(e.getErrorCode(),e.getMessage());
    }

    /*
     * 处理空指针异常
     *
     * */
    @ExceptionHandler(value = NullPointerException.class)
    @ResponseBody
    public ResultBody NPExceptionDeal(HttpServletRequest request,NullPointerException e){
        System.out.println("发生空指针异常：");
        System.out.println(e);
        return ResultBody.error(e.getMessage());
    }



    /*
     * 处理其他异常
     *
     * */
    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    public ResultBody ExceptionDeal(HttpServletRequest request,Exception e){
        System.out.println("发生未知异常：");
        System.out.println(e);
        return ResultBody.error(CommonEnum.SERVER_ERROR);
    }

}
