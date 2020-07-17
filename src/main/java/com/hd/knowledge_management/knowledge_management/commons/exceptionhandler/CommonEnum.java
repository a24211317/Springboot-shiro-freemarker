package com.hd.knowledge_management.knowledge_management.commons.exceptionhandler;

public enum CommonEnum implements BaseErrorInfo{

    SUCCESS("200","success"),
    NTO_FOUND("404","file not found"),
    SERVER_ERROR("500","server error")
    ;


    private String code;
    private String msg;

    CommonEnum(String code,String msg){
        this.code=code;
        this.msg=msg;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
