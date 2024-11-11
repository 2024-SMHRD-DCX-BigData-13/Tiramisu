package com.tiramisu.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tiramisu.controller.Controller;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	
	private HashMap< String, Controller > handlerMapping; // 해쉬맵 객체 불러오기
	
	public void init(ServletConfig config) throws ServletException {
		handlerMapping = new HashMap<String, Controller>();
		// 매핑값에 따른 이동 로직 작성 필요
		handlerMapping.put("/goMain.do", new GoMainCon()); // 메인 페이지 이동 메소드
		handlerMapping.put("/goSearchResult.do", new GoSearchResultCon()); // 검색 페이지 이동 메소드
		handlerMapping.put("/goSearchDetail.do", new GoSearchDetailCon()); // 검색 결과 페이지(숙소 상세정보 페이지) 이동 메소드
		handlerMapping.put("/goAiRecommened.do", new GoAiRecommenedCon()); // 제미니 챗봇 페이지 이동 메소드
		handlerMapping.put("/aiRecommened.do", new AiRecommenedCon()); // 제미니 질문 보내고 답변 받는 메소드
		handlerMapping.put("/crawler.do", new GoCrawlerTestCon());
		handlerMapping.put("/geodo.do", new GeodoCon());
	}
	// 이 밑은 수정 X
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// don't touch
		// 1. URLMapping을 분리
				// http://local:8081/Ex08/login.do
				String uri = request.getRequestURI();
				// http://local:8081/Ex08/
				String cpath = request.getContextPath();
				// /login.do
				String mapping = uri.substring(cpath.length());

				System.out.println(mapping);

				// =====================================================

				// 2. URLMapping에 따라 다른 일을 처리

				String nextPage = null;
				
				// HashMap에서 Key값을 기준으로 데이터를 찾아오기
				Controller con = handlerMapping.get( mapping );
				
				if( con != null) {
					nextPage = con.execute(request, response);
				}
				// =====================================================

				// 3. 페이지 이동
				// *** redirect 하고 싶은 경우에는 URLMapping 앞에 "redirect:/"을 붙이자 ***
				if (nextPage != null) {
					if (!nextPage.contains("redirect:/")) {
						RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/" + nextPage + ".jsp");

						rd.forward(request, response);
					} else {

						response.sendRedirect(nextPage.replace("redirect:/", ""));
					}
				}

				// =====================================================

			}

}
