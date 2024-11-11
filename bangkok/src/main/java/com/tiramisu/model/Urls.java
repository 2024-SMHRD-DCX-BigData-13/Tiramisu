package com.tiramisu.model;

import lombok.Data;

//이미지 경로 

@Data
public class Urls {

 // 경로 아이디 
 private Double url_id;

 // 룸 아이디 
 private int room_id;

 // 이미지 URL 
 private String img_url;

 // 등록 일자 
 private String create_dt;
 
 private int lod_id;
 
}
