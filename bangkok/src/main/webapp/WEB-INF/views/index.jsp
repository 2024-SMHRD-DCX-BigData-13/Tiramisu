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
</head>
<body>
	<header>
		<div class="header-wrap">
			<h1 class="logo">
				<a href="/"> <img src="./img/logo.png" alt="logo">
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
							<li><a href="#">AI추천 여행지</a></li>
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
						<img src="./img/arrow-left.png" alt="arrow-left">
					</button>
					<button class="arrow-right">
						<img src="./img/arrow-right.png" alt="arrow-right">
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
				            <input type="hidden" name="lod_id" value="${RatingLod[index].lod_id}">
				
				            <!-- span 태그는 인덱스를 표시 -->
				            <span>${index + 1}</span>
				
				            <!-- 이미지 태그에서 src는 RatingUrl의 img_url 사용 -->
				            <img src="${RatingUrl[index].img_url}" alt="thumbnail">
				
				            <div class="top-div-text">
				                <!-- RatingLod에서 해당 인덱스에 맞는 항목 출력 -->
				                <p>숙소 이름: ${RatingLod[index].lod_name}</p>
				                <p>숙소 설명: ${RatingLod[index].lod_desc}</p>
				            </div>
				
				            <!-- 전송 버튼 -->
				            <button type="submit">상세 보기</button>
				        </form>
				    </li>
				</c:forEach>


<!-- 
					<li><a href="#"> <span>2</span> <img
							src="https://placehold.co/160x160" alt="thumbnail">
							<div class="top-div-text">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <span>3</span> <img
							src="https://placehold.co/160x160" alt="thumbnail">
							<div class="top-div-text">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <span>4</span> <img
							src="https://placehold.co/160x160" alt="thumbnail">
							<div class="top-div-text">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <span>5</span> <img
							src="https://placehold.co/160x160" alt="thumbnail">
							<div class="top-div-text">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <span>6</span> <img
							src="https://placehold.co/160x160" alt="thumbnail">
							<div class="top-div-text">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li> -->
				</ul>
			</section>
			<!--  -->
			<section id="theme-section">
				<div class="top-text">
					<h2>테마별 숙소</h2>
				</div>
				<div class="theme-tabs">
					<button class="hotel" data-content="불러올 슬라이드 컨텐츠">
						<p>호텔</p>
						<img src="http://placehold.co/320x280" alt="테마버튼사진">
					</button>
					<button class="pension" data-content="불러올 슬라이드 컨텐츠">
						<p>펜션</p>
						<img src="http://placehold.co/320x280" alt="테마버튼사진">
					</button>
					<button class="hanok" data-content="불러올 슬라이드 컨텐츠">
						<p>한옥</p>
						<img src="http://placehold.co/320x280" alt="테마버튼사진">
					</button>
					<button class="guesthouse" data-content="불러올 슬라이드 컨텐츠">
						<p>게스트하우스</p>
						<img src="http://placehold.co/320x280" alt="테마버튼사진">
					</button>
					<button class="oceanview" data-content="불러올 슬라이드 컨텐츠">
						<p>오션뷰</p>
						<img src="http://placehold.co/320x280" alt="테마버튼사진">
					</button>
					<button class="swimmingpool" data-content="불러올 슬라이드 컨텐츠">
						<p>수영장</p>
						<img src="http://placehold.co/320x280" alt="테마버튼사진">
					</button>
					<button class="petfriendly" data-content="불러올 슬라이드 컨텐츠">
						<p>반려동물동반</p>
						<img src="http://placehold.co/320x280" alt="테마버튼사진">
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
						<img src="https://placehold.co/542x400" alt="큰썸네일">
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
				<div class="map">
					<!-- 지도 api 삽입 -->
					<img src="https://placehold.co/590" alt="지도">
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
</body>
</html>