package com.tiramisu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	// 가이드 라인(추상 메소드)
	public String execute( HttpServletRequest request
			, HttpServletResponse response ) throws ServletException, IOException ;
	// 프론트 컨트롤러를 제외한 모든 컨트롤러의 참조 컨트롤러 (기본틀)
	// 수정 X

}
