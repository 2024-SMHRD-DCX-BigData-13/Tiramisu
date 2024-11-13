<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/index.css">
<link rel="stylesheet" href="assets/css/hf.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">
<script type="text/javascript"
	src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=rcitx86g0n"></script>
</head>
<body>
	<header>
		<div class="header-wrap">
			<h1 class="logo">
				<a href="goIndex.do"> <img src="./assets/img/logo.png"
					alt="logo">
				</a>
			</h1>
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
	<!--  -->
	<main>
		<div class="wrap">
			<section id="banner">
				<div class="slide-overlay">
					<button class="arrow-left">
						<img src="./assets/img/arrow-left.png" alt="arrow-left">
					</button>
					<button class="arrow-right">
						<img src="./assets/img/arrow-right.png" alt="arrow-right">
					</button>
					<div class="progress-bar">
						<div class="progress"></div>
					</div>
				</div>
				<div class="slide-item">
					<!-- jstl로 배너 개수 변경 -->
					<div class="slide-img">
						<img
							src="https://image.goodchoice.kr/resize_792x480/affiliate/2024/03/11/65eec572af91e.jpg"
							alt="">
					</div>
					<div class="slide-img">
						<img
							src="https://image.goodchoice.kr/resize_792x480/affiliate/2024/03/11/65eec572af91e.jpg"
							alt="">
					</div>
					<div class="slide-img">
						<img
							src="https://image.goodchoice.kr/resize_792x480/affiliate/2024/03/11/65eec572af91e.jpg"
							alt="">
					</div>
				</div>
			</section>
			<!--  -->
			<section id="top-items">
				<div class="top-text">
					<h2>인기 숙소</h2>
					<a href="#">더보기</a>
				</div>
				<ul class="top-items-list">
					<!-- foreach 사용 -->
					<!-- RatingLod와 RatingUrl을 6개씩 묶어서 li 태그로 출력 -->
					<c:forEach var="index" begin="0" end="5">
						<li>
							<!-- form을 사용하여 데이터를 전송 -->
							<form action="goDetails.do" method="post">
								<!-- lod_id를 숨겨서 전송 -->
								<input type="hidden" name="lod_id"
									value="${RatingLod[index].lod_id}">

								<!-- span 태그는 인덱스를 표시 -->
								<span>${index + 1}</span>

								<!-- 첫 번째 이미지만 출력 -->
								<c:if
									test="${not empty RatingUrl[index] and not empty RatingUrl[index][0]}">
									<img src="${RatingUrl[index][0].img_url}" alt="thumbnail">
								</c:if>

								<div class="top-div-text">
									<!-- RatingLod에서 해당 인덱스에 맞는 항목 출력 -->
									<div>
										<span>숙소</span>
										<p>${RatingLod[index].lod_name}</p>
									</div>
									<div>
										<span>숙소 설명</span>
										<p>${RatingLod[index].lod_desc}</p>
									</div>
								</div>

								<!-- 전송 버튼 -->
								<button type="submit">상세 보기</button>
							</form>
						</li>
					</c:forEach>
				</ul>
			</section>
			<!--  -->
			<section id="theme-section">
				<div class="top-text">
					<h2>테마별 숙소</h2>
				</div>
				<div class="theme-tabs">
					<button class="hotel" data-content="불러올 슬라이드 컨텐츠">
						<p class="type-p">호텔</p>
						<img class="type-image"
							src="https://upload.wikimedia.org/wikipedia/commons/8/8c/The_Peninsula_Hong_Kong_Night_View_2006.jpg"
							alt="테마버튼사진">
					</button>
					<button class="pension" data-content="불러올 슬라이드 컨텐츠">
						<p class="type-p">펜션</p>
						<img class="type-image"
							src="https://img.einet.kr/P202106007/home/slides/02.jpg?v=1625183567"
							alt="테마버튼사진">
					</button>
					<button class="hanok" data-content="불러올 슬라이드 컨텐츠">
						<p class="type-p">한옥</p>
						<img class="type-image"
							src="data:image/jpeg;base64,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"
							alt="테마버튼사진">
					</button>
					<button class="guesthouse" data-content="불러올 슬라이드 컨텐츠">
						<p class="type-p">게스트하우스</p>
						<img class="type-image"
							src="https://www.tamnao.com/data/ad/thumb/CADO210037_11.png"
							alt="테마버튼사진">
					</button>
					<button class="oceanview" data-content="불러올 슬라이드 컨텐츠">
						<p class="type-p">오션뷰</p>
						<img class="type-image"
							src="data:image/jpeg;base64,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"
							alt="테마버튼사진">
					</button>
					<button class="swimmingpool" data-content="불러올 슬라이드 컨텐츠">
						<p class="type-p">수영장</p>
						<img class="type-image"
							src="https://jtns1.jeju.com/images/upload/contents/ac/195_ac_con_17.jpg"
							alt="테마버튼사진">
					</button>
					<button class="petfriendly" data-content="불러올 슬라이드 컨텐츠">
						<p class="type-p">반려동물동반</p>
						<img class="type-image"
							src="data:image/jpeg;base64,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"
							alt="테마버튼사진">
					</button>
				</div>
				<div class="theme-slider">
					<ul class="theme-item">
						<li><img src="https://placehold.co/280x200" alt="item">
							<div class="theme-text">
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Quisque ante mi, dapibus in auctor in, maximus sit amet
									risus. Nullam id viverra est. Cras a neque nunc. Quisque in
									tortor non massa posuere posuere.</p>
							</div></li>
						<li><img src="https://placehold.co/280x200" alt="item">
							<div class="theme-text">
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Quisque ante mi, dapibus in auctor in, maximus sit amet
									risus. Nullam id viverra est. Cras a neque nunc. Quisque in
									tortor non massa posuere posuere.</p>
							</div></li>
						<li><img src="https://placehold.co/280x200" alt="item">
							<div class="theme-text">
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Quisque ante mi, dapibus in auctor in, maximus sit amet
									risus. Nullam id viverra est. Cras a neque nunc. Quisque in
									tortor non massa posuere posuere.</p>
							</div></li>
						<li><img src="https://placehold.co/280x200" alt="item">
							<div class="theme-text">
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Quisque ante mi, dapibus in auctor in, maximus sit amet
									risus. Nullam id viverra est. Cras a neque nunc. Quisque in
									tortor non massa posuere posuere.</p>
							</div></li>
						<li><img src="https://placehold.co/280x200" alt="item">
							<div class="theme-text">
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Quisque ante mi, dapibus in auctor in, maximus sit amet
									risus. Nullam id viverra est. Cras a neque nunc. Quisque in
									tortor non massa posuere posuere.</p>
							</div></li>
						<li><img src="https://placehold.co/280x200" alt="item">
							<div class="theme-text">
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Quisque ante mi, dapibus in auctor in, maximus sit amet
									risus. Nullam id viverra est. Cras a neque nunc. Quisque in
									tortor non massa posuere posuere.</p>
							</div></li>
						<li><img src="https://placehold.co/280x200" alt="item">
							<div class="theme-text">
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Quisque ante mi, dapibus in auctor in, maximus sit amet
									risus. Nullam id viverra est. Cras a neque nunc. Quisque in
									tortor non massa posuere posuere.</p>
							</div></li>
						<li><img src="https://placehold.co/280x200" alt="item">
							<div class="theme-text">
								<h3>Lorem ipsum dolor sit amet</h3>
								<p>Quisque ante mi, dapibus in auctor in, maximus sit amet
									risus. Nullam id viverra est. Cras a neque nunc. Quisque in
									tortor non massa posuere posuere.</p>
							</div></li>
					</ul>
				</div>
			</section>
			<!--  -->
			<section id="region">
				<div class="top-text">
					<h2>지역별 숙소</h2>
				</div>
				<div class="region-imgs">
					<div class="big-img">
						<img
							src="https://life-style-f-hotel.seoulhotelskorea.com/data/Photos/700x500w/677/67716/67716833.JPEG"
							alt="큰썸네일">
						<div class="region-overlay">설명 텍스트</div>
					</div>
					<ul class="small-imgs">
						<li class="small-img"><img src="https://placehold.co/170"
							alt="작은썸네일1">
							<div class="region-overlay">설명 텍스트</div></li>
						<li class="small-img"><img src="https://placehold.co/170"
							alt="작은썸네일2">
							<div class="region-overlay">설명 텍스트</div></li>
						<li class="small-img"><img src="https://placehold.co/170"
							alt="작은썸네일3">
							<div class="region-overlay">설명 텍스트</div></li>
					</ul>
				</div>
				<div class="map" id="map" style="width: 100%; height: 590px;">
					<!-- 지도 api 삽입 -->
					<!-- <img src="https://placehold.co/590" alt="지도"> -->
				</div>
			</section>
		</div>
	</main>
	<!--  -->
	<footer>
		<div class="footer-wrap">
			<div class="f-text-h">dsadasdasda</div>
			<div class="f-text"></div>
			<div class="f-connect"></div>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="assets/js/ie/i.js"></script>
	<script src="assets/js/ie/hf.js"></script>
	<script src="assets/js/ie/naverMaps.js"></script>
</body>
</html>