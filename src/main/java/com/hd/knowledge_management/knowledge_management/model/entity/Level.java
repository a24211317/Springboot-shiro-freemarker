package com.hd.knowledge_management.knowledge_management.model.entity;

public class Level {

    private int lid;
    private String content;
    private String level;
    private String parentId;

    @Override
    public String toString() {
        return "Level{" +
                "content='" + content + '\'' +
                '}';
    }

    public int getLid() {
        return lid;
    }

    public void setLid(int lid) {
        this.lid = lid;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }


    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }


    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

}
