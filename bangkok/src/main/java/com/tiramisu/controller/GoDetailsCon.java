package com.tiramisu.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tiramisu.model.LodRooms;
import com.tiramisu.model.LodRoomsDAO;
import com.tiramisu.model.Lodgings;
import com.tiramisu.model.LodgingsDAO;
import com.tiramisu.model.Urls;
import com.tiramisu.model.UrlsDAO;

public class GoDetailsCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 검색 결과 페이지(숙소 상세 정보 페이지) 이동 메소드
		int lodId = Integer.parseInt(request.getParameter("lod_id"));
		LodgingsDAO lod = new LodgingsDAO();
		UrlsDAO url = new UrlsDAO();
		LodRoomsDAO room = new LodRoomsDAO();
		List<Lodgings> lods = lod.selectForDetail(lodId);
		List<LodRooms> rooms = room.selectForDetail(lodId);
		List<Urls> allRoomUrls = new ArrayList<>(); // 모든 URL을 담는 리스트
		Urls roomUrl = null;
		for (LodRooms lodRoom : rooms) {
		    int roomId = lodRoom.getRoom_id(); // room_id 추출
		    roomUrl = url.selectForDetail(roomId); // room_id를 파라미터로 전달하여 Urls 정보 가져오기
		    allRoomUrls.add(roomUrl);
		    // 여기서 roomUrl을 처리 (예: 리스트에 추가하거나 출력하는 등의 작업)
		    // 예를 들어, 가져온 roomUrl을 로깅하거나 출력할 수 있습니다.
		    System.out.println("Room ID: " + roomId + ", URL: " + roomUrl + "sdfsdf"+lods);
		}
		request.setAttribute("lod", lods);
		request.setAttribute("room", rooms);
		request.setAttribute("url", allRoomUrls);
		
		return "details";
	}

}
