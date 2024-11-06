package com.tiramisu.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data // 만능
public class Lodgings {
	
	    // 숙소 아이디 
	    private Double lod_id;
	    
	    // 숙소 명 
	    private String lod_name;

	    // 숙소 종류 
	    private String lod_type;

	    // 숙소 설명 
	    private String lod_desc;

	    // 전화번호 
	    private String lod_tel;

	    // 주소 
	    private String lod_addr;

	    // 최저가격 
	    private Integer low_price;

	    // 최고 가격 
	    private Integer high_price;

	    // 평점 
	    private Double lod_ratings;

	    // 위도 
	    private Double lat;

	    // 경도 
	    private Double lon;
}
