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
	<header>
		<div class="header-wrap">
			<h1 class="logo">
				<a href="goIndex.do"> <img src="assets/img/logo.png" alt="logo">
				</a>
			</h1>
			<div class="search">
				<input class="search-box" type="text" size="10" name="search"
					placeholder="전국 방방곡곡 어디든지!">
				<button class="search-toggle"></button>
			</div>
			<div class="search-focus">
				<div class="left-text">
					<p>상세검색</p>
				</div>
				<div class="right-wrap">
					<div class="right-box">
						<p>여행지</p>
						<ul class="destination-button button-grid">
							<li><button>강원</button></li>
							<li><button>경기</button></li>
							<li><button>경북</button></li>
							<li><button>경상</button></li>
							<li><button>광주</button></li>
							<li><button>대구</button></li>
							<li><button>대전</button></li>
							<li><button>부산</button></li>
							<li><button>서울</button></li>
							<li><button>인천</button></li>
							<li><button>전남</button></li>
							<li><button>전북</button></li>
							<li><button>제주</button></li>
							<li><button>충남</button></li>
							<li><button>충북</button></li>
						</ul>
					</div>
					<div class="right-box">
						<p>여행자</p>
						<input type="number" name="traveler">
					</div>
				</div>
			</div>
			<!-- nav -->
			<div class="hamburger-wrap">
				<button class="hamburger">
					<p class="map-name">메뉴보기</p>
					<div class="hamburger-icon">
						<div class="icon1"></div>
						<div class="icon2"></div>
						<div class="icon3"></div>
					</div>
				</button>
			</div>
			<nav>
				<ul class="hamburger-menu">
					<li><a href="#">소개</a>
						<ul class="sub-menu">
							<li><a href="#">방방곡곡이란?</a></li>
						</ul></li>
					<li><a href="#">숙소 찾기</a></li>
					<li><a href="#">AI 추천</a>
						<ul class="sub-menu">
							<li><a href="#">나를 위한 숙소 찾기</a></li>
							<li><a href="goAiRec.do">AI추천 여행지</a></li>
						</ul></li>
					<li><a href="#">여행지</a>
						<ul class="sub-menu">
							<li><a href="#">관광명소</a></li>
							<li><a href="#">맛집</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</header>
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
						</c:forEach>
					</div>
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
	<footer>
		<div class="footer-wrap">
			<div class="f-text-h"></div>
			<div class="f-text"></div>
			<div class="f-connect"></div>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="assets/js/ie/d.js"></script>
	<script src="assets/js/ie/hf.js"></script>
	<script src="assets/js/ie/detail.js"></script>
</body>
</html>