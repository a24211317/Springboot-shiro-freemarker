package com.hd.knowledge_management.knowledge_management.controller.server;

import com.alibaba.fastjson.JSON;
import com.google.gson.Gson;
import com.hd.knowledge_management.knowledge_management.service.QNService;
import com.qiniu.http.Response;
import com.qiniu.storage.model.DefaultPutRet;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import springfox.documentation.annotations.ApiIgnore;

import java.util.HashMap;
import java.util.Map;

@RestController
@ApiIgnore
public class QNController {
    @Autowired
    private QNService qnService;

    @Value("${qiniu.path}")
    private String path;

    @PostMapping("/shangchuan")
    public String shangchuan(@RequestParam("file") MultipartFile file) throws Exception {
        Response response = qnService.uploadFile(file.getInputStream());
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("code", 0);
        map.put("msg", "");
        if (response.isOK()) {
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            String url = path + "/" + putRet.key;
            map.put("data", url);
        } else {
            map.put("code", 1);
            map.put("msg", "上传失败");
        }
        System.out.println(map);
        return JSON.toJSONString(map);
    }

}
