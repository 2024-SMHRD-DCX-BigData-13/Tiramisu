package com.tiramisu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.tiramisu.model.Lodgings;
import com.tiramisu.model.Urls;
import com.tiramisu.model.UrlsDAO;

public class NaverMapsCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		Double lon = Double.parseDouble(request.getParameter("lon"));
		Double lat = Double.parseDouble(request.getParameter("lat"));

		UrlsDAO url = new UrlsDAO();

		Lodgings lods = new Lodgings();
		lods.setLat(lat);
		lods.setLon(lon);

		List<Urls> AddUrlRes = url.selectForAddr(lods);
		// JSON 변환 (예시)
		Gson gson = new Gson();
		String jsonResponse = gson.toJson(AddUrlRes);

		// JSON 응답 반환
		response.getWriter().write(jsonResponse);
		return null;

	}

}
