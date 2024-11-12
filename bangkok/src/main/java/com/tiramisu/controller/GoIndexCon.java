package com.tiramisu.controller;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.text.StringEscapeUtils;

import com.google.gson.Gson;
import com.tiramisu.model.Lodgings;
import com.tiramisu.model.LodgingsDAO;
import com.tiramisu.model.Urls;
import com.tiramisu.model.UrlsDAO;
import com.tiramisu.model.naverMaps;

public class GoIndexCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * naverMaps maps = new naverMaps(); String result = maps.callNaverApi("서울");
		 * request.setAttribute("result", result);
		 */
		String type = request.getParameter("type");
		
		UrlsDAO url = new UrlsDAO();
		LodgingsDAO lod = new LodgingsDAO();
		
		List<Urls> RatingUrlRes = url.selectForRating();
		List<Lodgings> RatingLodRes = lod.selectForRating();
		
		request.setAttribute("RatingLod", RatingLodRes);
		request.setAttribute("RatingUrl", RatingUrlRes);

		
		return "index";
	}

}