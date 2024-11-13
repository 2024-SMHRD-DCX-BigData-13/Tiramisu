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
                    <img src="https://placehold.co/1200x520" alt="banner-img">
               </section>
               <div class="title-box">
                   <h2>방방곡곡을 소개합니다.</h2>
               </div>
               <section class="about">
                    <div class="about-text">
                        <h3>Nam eget interdum odio.</h3>
                        <p>Mauris urna tellus, ultricies mollis justo sed, accumsan vehicula purus. Etiam non semper est. Vestibulum quis metus eleifend eros tristique tincidunt. Quisque ultricies feugiat venenatis. Mauris fermentum, arcu eget consequat posuere, mauris mauris finibus dui, a porta augue nisl sed mauris.</p>
                    </div>
                    <img src="https://placehold.co/300x220" alt="img">
               </section>
            </div>
        </main>
        <!--  -->
        <%@ include file="/WEB-INF/views/footer.jsp" %>
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="./assets/js/ie/hf.js"></script>
    </body>
</html>