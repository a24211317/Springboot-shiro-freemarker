package com.hd.knowledge_management.knowledge_management.model.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class WebSetting {

  private String title;
  private String domain;
  private String logo;
  private String email;
  private String language;
  private int status;


}
