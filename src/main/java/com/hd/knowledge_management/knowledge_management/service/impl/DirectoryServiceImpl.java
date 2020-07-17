package com.hd.knowledge_management.knowledge_management.service.impl;

import com.hd.knowledge_management.knowledge_management.dao.DirectoryDao;
import com.hd.knowledge_management.knowledge_management.model.vo.DirectoryVo;
import com.hd.knowledge_management.knowledge_management.service.DirectoryService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;

import javax.annotation.Resource;
import java.util.Iterator;
import java.util.List;

@Service
public class DirectoryServiceImpl implements DirectoryService {

    @Resource
    private DirectoryDao directoryDao;

    @Override
    public List<DirectoryVo> getDirectoryByRid(String rid) {
        return directoryDao.getDirectoryByRid(rid);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean delDirectory(int did) {
        DirectoryVo directory = directoryDao.getDirectoryByDid(did);
        if (directory.getParentId() == 0) {
            List<DirectoryVo> subset = directoryDao.getDirectorySubsetByDid(did);
            Iterator<DirectoryVo> it = subset.iterator();
            while (it.hasNext()) {
                if (! (directoryDao.delDirectory(it.next().getDid()) > 0)) {
                    TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
                    return false;
                }
            }
        }
        return directoryDao.delDirectory(did) > 0;
    }
}
