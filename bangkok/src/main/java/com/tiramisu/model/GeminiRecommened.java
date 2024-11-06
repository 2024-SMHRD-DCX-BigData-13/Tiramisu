package com.tiramisu.model;

import java.nio.charset.StandardCharsets;
import java.util.Scanner;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONObject;

public class GeminiRecommened {
	public static void main(String[] args) {

		String geminiUrl = "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash-latest:generateContent?key=AIzaSyAz_C0sAiYalGY0xX7-lOHwFaoB9qcqUCA"; // Gemini
																																											// API
																																											// 키

		try (CloseableHttpClient httpClient = HttpClients.createDefault()) {
			Scanner scanner = new Scanner(System.in);
			String userInput;

			while (true) {
				userInput = scanner.nextLine(); // 사용자 입력 받기

				// "exit" 입력 시 종료
				if (userInput.equalsIgnoreCase("exit")) {
					System.out.println("대화를 종료합니다.");
					break;
				}

				// JSON 입력 문자열 (한국어 입력 그대로 사용)
				String jsonInputString = "{\"contents\":[{\"parts\":[{\"text\":\"" + userInput + "\"}]}]}"; // 사용자 입력으로
				
				HttpPost postRequest = new HttpPost(geminiUrl);
				postRequest.setHeader("Content-Type", "application/json"); // 요청 헤더 설정
				postRequest.setEntity(new StringEntity(jsonInputString, StandardCharsets.UTF_8)); // UTF-8 인코딩

				HttpResponse response = httpClient.execute(postRequest); // 요청 실행

				// 응답 처리
				int statusCode = response.getStatusLine().getStatusCode();
				if (statusCode == 200) {
					String responseBody = EntityUtils.toString(response.getEntity());
					// 응답 파싱 및 출력
					String reply = parseResponse(responseBody);
					System.out.println("제미니: " + reply); // AI의 응답 출력
				} else {
					String errorResponse = EntityUtils.toString(response.getEntity());
					System.out.println("오류: " + statusCode + " - 응답 내용: " + errorResponse); // 오류 코드 및 응답 출력
				}
			}
			scanner.close();
		} catch (Exception e) {
			e.printStackTrace(); // 예외 발생 시 스택 트레이스 출력
		}
	}


// 응답을 파싱하여 모델의 답변만 추출
	private static String parseResponse(String responseBody) {
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
