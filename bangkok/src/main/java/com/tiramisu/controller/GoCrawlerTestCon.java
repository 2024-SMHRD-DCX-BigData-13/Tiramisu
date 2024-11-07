package com.tiramisu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tiramisu.model.crawlerTest;

public class GoCrawlerTestCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "https://hotels.naver.com/hotels/N3292851?adultCnt=2&childAges=&checkIn=2024-11-14&checkOut=2024-11-15";
		crawlerTest crTe = new crawlerTest();
		try {
			crTe.getDataList(url);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;
	}

}
