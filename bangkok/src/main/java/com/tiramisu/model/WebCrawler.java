package com.tiramisu.model;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class WebCrawler {

    // 호텔 객실 정보를 크롤링하여 리스트로 반환하는 메소드
    public List<String> crawlRoomDetails(String url) throws IOException {
        List<String> roomDetails = new ArrayList<>();

        try {
            // User-Agent 설정하여 HTTP GET 요청을 보내고 HTML 문서 가져오기
            Document doc = Jsoup.connect(url)
                    .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36")
                    .get();

            // 원하는 요소를 선택
            Elements elements = doc.select("div#__next"); // 실제 페이지에서 확인한 클래스로 변경
      

            // 각 요소의 텍스트 출력
            if (elements.isEmpty()) {
                System.out.println("요소를 찾을 수 없습니다. CSS 선택자를 확인하세요.");
            } else {
                for (Element element : elements) {
                    roomDetails.add(element.html()); // 요소의 텍스트를 리스트에 추가
                }
            }

        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("웹 페이지를 불러오는데 실패했습니다.");
        }
        
        return roomDetails;
    }
}

