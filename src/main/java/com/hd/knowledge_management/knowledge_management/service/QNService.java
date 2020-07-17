package com.hd.knowledge_management.knowledge_management.service;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;

import java.io.InputStream;

public interface QNService {

    Response uploadFile(InputStream inputStream)throws QiniuException;

}
