package com.tiramisu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.http.protocol.HTTP;

import com.tiramisu.model.GeminiRecommenedEx;

public class AiRecommenedCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String input = request.getParameter("input");
		
		GeminiRecommenedEx gemini = new GeminiRecommenedEx();
		String geminiRes = gemini.getResponse(input+"여행지 간단하게 추천 해줘");
		
		HttpSession session = request.getSession();
		
		session.setAttribute("geminiRes", geminiRes);
		
		response.setContentType("text/html ; charset=UTF-8");
		// 2)PrintWriter 객체 생성
		PrintWriter out = response.getWriter();
		// 3)응답 내용을 작성
		out.print(geminiRes);
		
		return null;
	}

}
