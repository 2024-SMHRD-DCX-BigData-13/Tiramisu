<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/hf.css">
</head>
<body>
	<header>
		<div class="header-wrap">
			<a href="goIndex.do" class="logo"></a>
			<form class="search" action="goSearch.do">
				<input class="search-box" type="text" size="10" name="search"
					placeholder="전국 방방곡곡 어디든지!">
				<button class="search-toggle" type="submit"></button>
			</form>
			<div class="search-focus">
				<div class="left-text">
					<p>상세검색</p>
				</div>
				<div class="right-wrap">
					<div class="right-box">
						<p>여행지</p>
						<form action="goSearch.do">
							<ul class="destination-button button-grid">
								<li><button type="submit" name="search" value="강원">강원</button></li>
								<li><button type="submit" name="search" value="경기">경기</button></li>
								<li><button type="submit" name="search" value="경북">경북</button></li>
								<li><button type="submit" name="search" value="경상">경상</button></li>
								<li><button type="submit" name="search" value="광주">광주</button></li>
								<li><button type="submit" name="search" value="대구">대구</button></li>
								<li><button type="submit" name="search" value="대전">대전</button></li>
								<li><button type="submit" name="search" value="부산">부산</button></li>
								<li><button type="submit" name="search" value="서울">서울</button></li>
								<li><button type="submit" name="search" value="인천">인천</button></li>
								<li><button type="submit" name="search" value="전남">전남</button></li>
								<li><button type="submit" name="search" value="전북">전북</button></li>
								<li><button type="submit" name="search" value="제주">제주</button></li>
								<li><button type="submit" name="search" value="충남">충남</button></li>
								<li><button type="submit" name="search" value="충북">충북</button></li>
							</ul>
						</form>
					</div>
					<div class="right-box">
						<p>여행자</p>
						<input type="number" name="traveler">
					</div>
				</div>
			</div>

			<!-- nav -->
			<button id="vButton">어둡게</button>
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
					<li><a href="goAbout.do">소개</a>
						<ul class="sub-menu">
							<li><a href="goAbout.do">방방곡곡이란?</a></li>
						</ul>
					</li>
					<li><a href="goSearch.do?search=서울">숙소 찾기</a></li>
					<li><a href="goAiRec.do">AI 추천</a>
						<ul class="sub-menu">
							<li><a href="goAiRec.do">나를 위한 숙소 찾기</a></li>
							<li><a href="goAiRec.do">AI추천 여행지</a></li>
						</ul>
					</li>
				</ul>
			</nav>
		</div>
	</header>
	<script src="assets/js/ie/hf.js"></script>
</body>
</html>