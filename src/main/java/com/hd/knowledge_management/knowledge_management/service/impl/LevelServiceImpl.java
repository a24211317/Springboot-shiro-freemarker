package com.hd.knowledge_management.knowledge_management.service.impl;

import com.hd.knowledge_management.knowledge_management.dao.LevelDao;
import com.hd.knowledge_management.knowledge_management.model.entity.Level;
import com.hd.knowledge_management.knowledge_management.model.vo.LevelVo;
import com.hd.knowledge_management.knowledge_management.service.LevelService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

@Service
public class LevelServiceImpl implements LevelService {
    @Resource
    private LevelDao levelDao;

    @Override
    public List<LevelVo> getLevel(int level) {
        List<LevelVo> returnList = new ArrayList<>();
        List<Level> firstlevel = levelDao.getLevelByLevel(1);
        String childContent = "";
        for (Level eachLevel : firstlevel) {
            LevelVo levelVo = new LevelVo();
            levelVo.setLid(eachLevel.getLid());
            levelVo.setContent(eachLevel.getContent());
            List<Level> childLevel = levelDao.getLevelByParentId(eachLevel.getLid());
            childContent = "";
            if (childLevel != null && childLevel.size() > 0) {
                for (Level eachChildLevel : childLevel) {
                    childContent += eachChildLevel.getContent() + " ";
                }
                levelVo.setChild(childContent);
            } else {
                levelVo.setChild("暂无");
            }
            returnList.add(levelVo);
        }

        return returnList;
    }

    @Override
    public List<Level> getLevelByParentId(int level) {
        return levelDao.getLevelByParentId(level);
    }

    @Override
    public Boolean delLevel(int lid) {
        if (levelDao.delLevel(lid) > 0) {
            return true;
        }
        return false;
    }

    @Override
    public Map<String, Object> allLevel() {
        List<Level> allList = levelDao.allLevel();
        List<Level> allLevel1 = new ArrayList<>();
        Map<String, Object> returnMap = new HashMap<>();
        Iterator<Level> it = allList.iterator();
        int length = 0;
        int i = 0;
        Level itLevel = null;
        while (it.hasNext()) {
            itLevel = it.next();
            if (length < 2) {
                allLevel1.add(itLevel);
            } else {
                length = 0;
                returnMap.put("allLevel" + i, allLevel1);
                allLevel1 = new ArrayList<>();
                allLevel1.add(itLevel);
                i++;
            }
            length++;
        }
        if (length != 0) {
            returnMap.put("level", allLevel1);
        }
        return returnMap;
    }
}
