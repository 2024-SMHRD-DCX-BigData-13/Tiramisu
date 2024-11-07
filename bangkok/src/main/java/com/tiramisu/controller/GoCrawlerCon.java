package com.tiramisu.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import java.util.List;
import com.tiramisu.model.WebCrawler;

public class GoCrawlerCon implements Controller {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// 크롤링할 URL
			String url = "https://hotels.naver.com/hotels/N1195032?adultCnt=2&childAges=&checkIn=2024-11-14&checkOut=2024-11-15"; // 실제 호텔 사이트 URL로 변경

			// WebCrawler 인스턴스 생성
			WebCrawler crawler = new WebCrawler();

			// WebCrawler에서 객실 정보 크롤링
			List<String> roomDetails = crawler.crawlRoomDetails(url);

			// 크롤링된 데이터를 request에 저장
			request.setAttribute("roomDetails", roomDetails);

			// JSP로 포워딩
			return "crawlerResult"; // JSP 페이지 이름 (필요시 경로 수정)

		} catch (Exception e) {
			e.printStackTrace(); // 예외 출력
			request.setAttribute("error", "크롤링 중 오류가 발생했습니다.");
			return "crawlerResult"; // 오류 페이지로 리디렉션
		}
	}
}