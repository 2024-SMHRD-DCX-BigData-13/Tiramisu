package com.tiramisu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.tiramisu.model.Lodgings;
import com.tiramisu.model.LodgingsDAO;
import com.tiramisu.model.Urls;
import com.tiramisu.model.UrlsDAO;

public class IndexAjaxCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String type = request.getParameter("type");
		System.out.println(type);

		LodgingsDAO lod = new LodgingsDAO();
		UrlsDAO url = new UrlsDAO();

		List<Lodgings> lods = lod.selectForType(type);
		List<Urls> urls = url.selectForType(type);

		// Gson 객체 생성
		Gson gson = new Gson();

		// 데이터 리스트를 JSON으로 변환
		String lodgingsJson = gson.toJson(lods);
		String urlsJson = gson.toJson(urls);

		// JSON 응답을 클라이언트에 전송
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");

		// JSON 응답 출력
		response.getWriter().write("{\"lodgings\": " + lodgingsJson + ", \"urls\": " + urlsJson + "}");

		return null;
	}

}
