package com.tiramisu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoDetailsCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 검색 결과 페이지(숙소 상세 정보 페이지) 이동 메소드
		String lodId = request.getParameter("lod_id");
		
		
		return "details";
	}

}
