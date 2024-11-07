package com.tiramisu.model;

import org.apache.http.HttpEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.util.EntityUtils;

import java.io.IOException;


public class naverMaps {

	    private static final String CLIENT_ID = "rcitx86g0n";  // 네이버 클라우드에서 발급받은 Client ID
	    private static final String CLIENT_SECRET = "7fRdV04yW1HgNyyG9fTniUwWpciU1kpFtpWid1Kk";  // 네이버 클라우드에서 발급받은 Client Secret

	    // 네이버 API 호출 메서드
	    public String callNaverApi(String query) throws IOException {
	        String apiUrl = "https://openapi.naver.com/v1/search/local.json?query=" + query;

	        try (CloseableHttpClient client = HttpClients.createDefault()) {
	            HttpGet httpGet = new HttpGet(apiUrl);
	            httpGet.setHeader("X-NCP-APIGW-API-KEY-ID",CLIENT_ID);  // Client ID
	            httpGet.setHeader("X-NCP-APIGW-API-KEY",CLIENT_SECRET);  // Client Secret

	            try (CloseableHttpResponse response = client.execute(httpGet)) {
	                HttpEntity entity = response.getEntity();
	                return EntityUtils.toString(entity);  // 네이버 API의 응답 본문을 반환
	            }
	        }
	    }
	}

