<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/detail.css">
<link rel="stylesheet" href="assets/css/hf.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">
</head>
<body>
	<%@ include file="/WEB-INF/views/header.jsp" %>
	<main>
		<div class="wrap">
			<section id="detail-top">
				<div class="big-intro">
					<c:forEach var="url" items="${url}" varStatus="status">
						<c:if test="${status.index == 0}">
							<img src="${url.img_url}" alt="big-img">
						</c:if>
					</c:forEach>
					<div class="big-text">
						<c:forEach var="lodging" items="${lod}">
							<h2>${lodging.lod_name }</h2>
							<p>
								주소 : ${lodging.lod_addr}<br> 전화번호 : ${lodging.lod_tel }<br>
								체크인 시간 : ${lodging.checkin }/${lodging.checkout }<br> 
								테마 : ${lodging.lod_type }<br>
								평점 : ★${lodging.lod_ratings }
							</p>

							<h3>인허가 정보</h3>
							<div class="detail-box">
								<p>인허가 등록 일자 : ${lodging.inhurga_start }</p>
								<br>
								<p>인허가 만료 일자 : ${lodging.inhurga_end }</p>
							</div>
						</c:forEach>
					</div>
				</div>
				<div class="small-intro">
					<h3>시설 사진</h3>
					<ul class="small-intro-slider">
						<c:forEach var="url" items="${url}">
							<li><img src="${url.img_url}" alt="img"></li>
						</c:forEach>
					</ul>
				</div>
			</section>
		<div class="box">
			<div class="box-text">
				<c:forEach var="lodging" items="${lod}">
					<h2>시설 소개</h2>
					<p id="desc">${lodging.lod_desc }</p>
				</c:forEach>
			</div>
		</div>
		<section id="detail-middle">
			<div class="info-header">
				<h2>객실 정보</h2>
				<button onclick="valueDown()">◀</button>
				<button onclick="valueUp()">▶</button>
			</div>
			<div class="info-box">
				<c:forEach var="url" items="${url}" varStatus="status">
					<c:if test="${status.index == 3}">
						<img src="${url.img_url }" alt="img" id="rooms">
						<div class="info-side">
					</c:if>
				</c:forEach>
				
				<c:forEach var="room" items="${room}" varStatus="status">
					<c:if test="${status.index == 3}">
						<div class="info-text">
							<!-- <img src="https://placehold.co/34" alt="icon"> -->
							<p>객실명: ${room.room_name }</p>
							
						</div>
						<div class="info-text">
							<!-- <img src="https://placehold.co/34" alt="icon"> -->
							<p>최저가(1박 기준): ${room.min_price }원</p>
						</div>
						<div class="info-text">
							<!-- <img src="https://placehold.co/34" alt="icon"> -->
							<p>최고가(1박 기준): ${room.max_price }원</p>
						</div>
						<div class="info-text">
							<!-- <img src="https://placehold.co/34" alt="icon"> -->
							<p>수용인원: ${room.people }인</p>
						</div>
						<div class="info-text">
							<!-- <img src="https://placehold.co/34" alt="icon"> -->
							<p>최대 수용인원: ${room.max_people }인</p>
						</div>
					</c:if>
				</c:forEach>
			</div>
		</section>
		<section id="detail-bottom">
			<div class="detail-left">
				<h2>서비스 정보</h2>
				<div class="service-box">
					<div class="info-text">
						<c:forEach var="lod" items="${lod}">
								<!-- <img src="https://placehold.co/34" alt="icon"> -->
								<p> ${fn:replace(fn:replace(lod.service, ',', '<br/> '), ' ', '')}</p>
						</c:forEach>
					</div>
				</div>
			</div>
			<img src="https://placehold.co/440x480" alt="지도">
		</section>
		</div>
	</main>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="assets/js/ie/d.js"></script>
	<script src="assets/js/ie/hf.js"></script>
	<script src="assets/js/ie/detail.js"></script>
</body>
</html>