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

		UrlsDAO url = new UrlsDAO();
		LodgingsDAO lod = new LodgingsDAO();
		List<Lodgings> RatingLodRes = lod.selectForRating();
		List<List<Urls>> allLodsUrls = new ArrayList<>();
		List<Urls> RatingUrlRes = null;
		for (Lodgings lodss : RatingLodRes) {
			int lodId = lodss.getLod_id();
			RatingUrlRes = url.selectForRating(lodId);
			if (!RatingUrlRes.isEmpty()) {
				allLodsUrls.add(List.of(RatingUrlRes.get(0)));
			}
			System.out.println(lodss.getLod_id());
			System.out.println(allLodsUrls);
		}

		request.setAttribute("RatingLod", RatingLodRes);
		request.setAttribute("RatingUrl", allLodsUrls);

		return "index";
	}

}
