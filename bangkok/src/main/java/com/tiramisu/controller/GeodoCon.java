package com.tiramisu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tiramisu.model.Lodgings;
import com.tiramisu.model.Urls;
import com.tiramisu.model.UrlsDAO;

public class GeodoCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		double lon  = Double.parseDouble(request.getParameter("lon"));
		double lat  = Double.parseDouble(request.getParameter("lat"));
		UrlsDAO url = new UrlsDAO();
		
		Lodgings lods = new Lodgings();
		lods.setLat(lat);
		lods.setLon(lon);
		
		List<Urls> AddUrlRes = url.selectForAddr(lods);
		
		request.setAttribute("AddUrlRes", AddUrlRes);
		return null;
	}

}
