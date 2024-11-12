package com.tiramisu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tiramisu.model.GeminiRecommened;

public class AiRecCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // 단순 인코딩
		String input = request.getParameter("input"); // 유저가 입력한 값 가져와서 변수에 담기
		
		GeminiRecommened gemini = new GeminiRecommened(); // 제미니 답변 메소드 불러오기
		String geminiRes = gemini.getResponse(input+"여행지 간단하게 추천 해줘"); // 제미니 답변 메소드에 질문을 넣어 답변 텍스트를 변수에 저장
		
		response.setContentType("text/html ; charset=UTF-8"); // 인코딩
		// 2)PrintWriter 객체 생성
		PrintWriter out = response.getWriter(); // 프린트 객체 소환
		// 3)응답 내용을 작성
		out.print(geminiRes); // 변수에 담은 답변을 프린트 해주기
		
		return null;
	}

}
