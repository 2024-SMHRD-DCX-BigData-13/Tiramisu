package com.tiramisu.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tiramisu.model.GeminiRecommenedEx;

public class GoAiRecommenedCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userInput = request.getParameter("input");
		
		
		GeminiRecommenedEx gemini = new GeminiRecommenedEx();
		String geminiRes = gemini.getResponse(userInput);
		HttpSession session = request.getSession();
		session.setAttribute("geminiRes", geminiRes);
		return "aiRecommened";
	}

}
