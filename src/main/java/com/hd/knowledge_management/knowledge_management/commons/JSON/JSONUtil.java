package com.hd.knowledge_management.knowledge_management.commons.JSON;

import com.alibaba.fastjson.JSON;
import com.hd.knowledge_management.knowledge_management.model.entity.Regulations;

public class JSONUtil {
    public static Regulations getRegulation(String data) {
        return JSON.toJavaObject(JSON.parseObject(data), Regulations.class);
    }
}
