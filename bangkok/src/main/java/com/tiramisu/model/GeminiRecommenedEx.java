package com.tiramisu.model;

import java.nio.charset.StandardCharsets;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class GeminiRecommenedEx {

	private static final String GEMINI_URL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=AIzaSyAz_C0sAiYalGY0xX7-lOHwFaoB9qcqUCA";

	// 제미니로부터 응답을 가져오는 메서드
	public String getResponse(String userInput) {
		String jsonInputString = "{\"contents\":[{\"parts\":[{\"text\":\"" + userInput + "\"}]}]}";

		try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
			HttpPost postRequest = new HttpPost(GEMINI_URL);
			postRequest.setHeader("Content-Type", "application/json");
			postRequest.setEntity(new StringEntity(jsonInputString, StandardCharsets.UTF_8));

			try (CloseableHttpResponse response = httpClient.execute(postRequest)) {
				int statusCode = response.getStatusLine().getStatusCode();
				if (statusCode == 200) {
					String responseBody = EntityUtils.toString(response.getEntity());
					return parseResponse(responseBody);
				} else {
					String errorResponse = EntityUtils.toString(response.getEntity());
					return "오류: " + statusCode + " - 응답 내용: " + errorResponse;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "예외 발생: " + e.getMessage();
		}
	}

	// 응답을 파싱하여 모델의 답변만 추출
	private String parseResponse(String responseBody) {
		JSONObject jsonObject = new JSONObject(responseBody);
		JSONArray candidates = jsonObject.getJSONArray("candidates");

		if (candidates.length() > 0) {
			JSONObject firstCandidate = candidates.getJSONObject(0);
			JSONObject content = firstCandidate.getJSONObject("content");
			JSONArray parts = content.getJSONArray("parts");

			if (parts.length() > 0) {
				return parts.getJSONObject(0).getString("text");
			}
		}
		return "응답을 파싱하는 데 오류가 발생했습니다.";
	}
}
