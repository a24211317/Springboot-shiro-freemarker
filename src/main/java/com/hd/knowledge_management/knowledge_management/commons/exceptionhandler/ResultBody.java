package com.hd.knowledge_management.knowledge_management.commons.exceptionhandler;

import com.alibaba.fastjson.JSONObject;

public class ResultBody {

    private String code;

    private String message;

    private Object result;

    public ResultBody(){

    }

    public ResultBody(BaseErrorInfo errorInfo){
        this.code=errorInfo.getCode();
        this.message=errorInfo.getMsg();
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getResult() {
        return result;
    }

    public void setResult(Object result) {
        this.result = result;
    }


    public static ResultBody success(){
        return success(null);
    }

    public static ResultBody success(Object data){
        ResultBody rb=new ResultBody();
        rb.setCode(CommonEnum.SUCCESS.getCode());
        rb.setMessage(CommonEnum.SUCCESS.getMsg());
        rb.setResult(data);
        return rb;
    }

    public static ResultBody error(BaseErrorInfo errorInfo){
        ResultBody rb=new ResultBody();
        rb.setCode(errorInfo.getCode());
        rb.setMessage(errorInfo.getMsg());
        rb.setResult(null);
        return rb;
    }

    public static ResultBody error(String code,String message){
        ResultBody rb=new ResultBody();
        rb.setCode(code);
        rb.setMessage(message);
        rb.setResult(null);
        return rb;
    }

    public static ResultBody error(String message){
        ResultBody rb=new ResultBody();
        rb.setCode("-1");
        rb.setMessage(message);
        rb.setResult(null);
        return rb;
    }


    @Override
    public String toString() {
        return JSONObject.toJSONString(this);
    }
}
