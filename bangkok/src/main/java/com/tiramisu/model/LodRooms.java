package com.tiramisu.model;

import lombok.Data;

@Data
public class LodRooms {

	// 룸 아이디
	private Double room_id;

	// 룸 이름
	private String room_name;

	// 최고가
	private int max_price;

	// 최저가
	private int min_price;

	// 숙소 아이디
	private int lod_id;

	// 수용인원
	private int people_num;

	// 침대 숫자
	private int bed_num;

}