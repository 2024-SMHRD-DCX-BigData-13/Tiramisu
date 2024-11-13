<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/ai-rec.css">
<link rel="stylesheet" href="assets/css/hf.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	<!--  -->
	<main>
		<div class="wrap">

			<div class="talk" id="chat-box">
				<img class="ai-icon" src="https://placehold.co/80" alt="profile">
				<div class="ai-text-box">
					<p>여행지를 입력해주세요</p>
				</div>
				<!-- 유저의 입력과 AI의 답변이 여기에 동적으로 추가됩니다. -->

			</div>
			<div class="user-input">
				<input type="text" id="input"> <input type="submit" id="btn">
			</div>
		</div>
	</main>

	<!--  -->
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="assets/js/ie/hf.js"></script>
	<script src="assets/js/ie/geminiAjax.js"></script>
</body>
</html>