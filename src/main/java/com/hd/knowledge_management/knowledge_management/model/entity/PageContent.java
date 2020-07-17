package com.hd.knowledge_management.knowledge_management.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PageContent {

  private String pid;
  private String pname;
  private String content;

}
