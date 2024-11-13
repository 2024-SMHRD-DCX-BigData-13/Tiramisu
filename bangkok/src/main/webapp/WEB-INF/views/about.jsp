<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/about.css">
        <link rel="stylesheet" href="assets/css/hf.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    </head>
    <body>
        <%@ include file="/WEB-INF/views/header.jsp" %>
        <!--  -->
        <main>
            <div class="wrap">
               <section class="about-banner">
                    <img src="https://media.istockphoto.com/id/585178794/ko/%EC%82%AC%EC%A7%84/%ED%8B%B0%EB%9D%BC%EB%AF%B8%EC%8A%88.webp?a=1&b=1&s=612x612&w=0&k=20&c=gKe9bg7c2hV2FktP-2KlvJFukwImxWkni_GgINIqXj0=" alt="banner-img">
               </section>
               <div class="title-box">
                   <h2>방방곡곡을 소개합니다.</h2>
               </div>
               <section class="about">
                    <div class="about-text">
                        <h3>인허가 숙소 조회 서비스</h3>
                        <p>허가 받은 숙소 정보를 제공하고 ai의 여행 코스 추천을 기반으로 사용자의 신뢰도를 높이고 보다 쾌적한 여행이 될 수 있도록 도와주는 서비스</p>
                    </div>
                    <img src="https://image.ytn.co.kr/general/jpg/2021/1102/202111020854337568_d.jpg" alt="img">
               </section>
            </div>
        </main>
        <!--  -->
        <%@ include file="/WEB-INF/views/footer.jsp" %>
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="./assets/js/ie/hf.js"></script>
    </body>
</html>