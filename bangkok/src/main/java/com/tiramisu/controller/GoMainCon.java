package com.tiramisu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tiramisu.model.naverMaps;

public class GoMainCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * naverMaps maps = new naverMaps(); String result = maps.callNaverApi("서울");
		 * request.setAttribute("result", result);
		 */
		return "main";
	}

}
