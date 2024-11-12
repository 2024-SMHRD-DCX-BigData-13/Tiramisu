package com.tiramisu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tiramisu.model.LodRooms;
import com.tiramisu.model.Lodgings;
import com.tiramisu.model.LodgingsDAO;
import com.tiramisu.model.Urls;
import com.tiramisu.model.UrlsDAO;

public class GoSearchCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String input1 = request.getParameter("search");
//		String input2 = request.getParameter("input2");
		UrlsDAO urls = new UrlsDAO();
		LodgingsDAO lods = new LodgingsDAO();
		
		List<Lodgings> lodRes = lods.selectForSearch(input1);
		List<Urls> urlRes = urls.selectForSearch(input1);
		request.setAttribute("lodRes", lodRes);
		request.setAttribute("urlRes", urlRes);
		return "search";
	}

}
