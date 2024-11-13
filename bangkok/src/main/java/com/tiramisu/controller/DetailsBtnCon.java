package com.tiramisu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DetailsBtnCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		int data = Integer.parseInt(request.getParameter("count"));
		System.out.println(data);
		response.setContentType("text/html ; charset=UTF-8"); // 인코딩
		// 2)PrintWriter 객체 생성
		PrintWriter out = response.getWriter(); // 프린트 객체 소환
		// 3)응답 내용을 작성
		out.print(data); // 변수에 담은 답변을 프린트 해주기
		request.setAttribute("data", data);
		return null;
	}

}
