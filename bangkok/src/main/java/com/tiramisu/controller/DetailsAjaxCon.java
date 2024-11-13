package com.tiramisu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

public class DetailsAjaxCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int data = Integer.parseInt(request.getParameter("num"));
        System.out.println("받은 num 값: " + data);
        
        // 클라이언트에 num 값을 반환
        response.setContentType("text/plain; charset=UTF-8");
        PrintWriter out = response.getWriter();
        out.print(data);  // num 값을 응답으로 보내기
        return null;
	}

}
