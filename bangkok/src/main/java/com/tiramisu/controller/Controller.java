package com.tiramisu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	// 가이드 라인(추상 메소드)
	public String execute( HttpServletRequest request
			, HttpServletResponse response ) throws ServletException, IOException ;
	
}
