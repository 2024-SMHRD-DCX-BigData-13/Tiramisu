<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/search.css">
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
			<section id="banner">
				<div><img src="https://images.trvl-media.com/lodging/70000000/69320000/69311400/69311369/77a4b41d.jpg?impolicy=resizecrop&rw=1200&ra=fit" alt="banner"></div>
			</section>
			<section id="search-result">
				<div class="result-top-text">
					<p>검색 결과 0건</p>
					<select name="" id="">
						<option>3줄 보기</option>
						<option>4줄 보기</option>
						<option>5줄 보기</option>
					</select>
				</div>
				<ul class="result-list">
					<c:forEach var="lods" items="${lodRes}" varStatus="status">
						<li>
							<!-- 각 폼에 고유한 class 값을 부여 -->
							<form class="lodgingForm" data-index="${status.index}"
								action="goDetails.do" method="post">
								<c:set var="imageDisplayed" value="false" />
								<c:forEach var="urls" items="${urlRes}" varStatus="urlStatus">
									<c:if test="${lods.lod_id == urls.lod_id && !imageDisplayed}">
										<!-- 첫 번째 이미지에만 크기 지정 -->
										<img src="${urls.img_url}" alt="small-img"
											style="width: 260px; height: 280px;">
										<c:set var="imageDisplayed" value="true" />
									</c:if>
								</c:forEach>
								<div class="text-box">
									<h3>${lods.lod_name}</h3>
									<p>${lods.lod_desc}</p>
								</div>

								<!-- 숨겨진 input 필드 추가 -->
								<input type="hidden" name="lod_id" value="${lods.lod_id}" />
								<button type="button" onclick="submitForm(this)">자세히 보기</button>
							</form>
						</li>
					</c:forEach>
<!-- 
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
					<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
										<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li>
										<li><a href="#"> <img src="https://placehold.co/260x280"
							alt="small-img">
							<div class="text-box">
								<h3>제목</h3>
								<p>설명</p>
							</div>
					</a></li> -->
				</ul>
				<div class="paging-button">
					<img src="assets/img/arrow-left.png" alt="left-arrow"
						class="left-arrow">
					<div class="number-button" id="pagination"></div>
					<img src="assets/img/arrow-right.png" alt="right-arrow"
						class="right-arrow">
				</div>
			</section>
		</div>
	</main>
	<%@ include file="/WEB-INF/views/footer.jsp" %>
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="assets/js/ie/s.js"></script>
	<script src="assets/js/ie/hf.js"></script>
	<script type="text/javascript">
		function submitForm(button) {
			// 'this'로 현재 버튼을 참조하여 부모 form을 선택
			var form = button.closest('form');
			form.submit(); // 해당 폼 제출
		}
	</script>
</body>
</html>