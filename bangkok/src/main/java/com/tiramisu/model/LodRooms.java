package com.tiramisu.model;

import lombok.Data;

@Data
public class LodRooms {

    // 룸아이디 
    private int room_id;

    // 룸 아이디 
    private String room_name;

    // 최고가 
    private int max_price;

    // 최저가 
    private int min_price;

    // 숙소 아이디 
    private int lod_id;

    // 수용인원 
    private int people;

    // 최대 수용인원 
    private int max_people;

    // 숙소 명 
    private String lod_name;
}