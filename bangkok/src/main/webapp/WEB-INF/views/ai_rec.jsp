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
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <div class="header-wrap">
                <h1 class="logo">
                    <a href="goIndex.do">
                        <img src="./assets/img/logo.png" alt="logo">
                    </a>
                </h1>
                <div class="search">
                    <input class="search-box" type="text" size="10" name="search" placeholder="전국 방방곡곡 어디든지!">
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
                        <li>
                            <a href="#">소개</a>
                            <ul class="sub-menu">
                                <li><a href="#">방방곡곡이란?</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">숙소 찾기</a>
                        </li>
                        <li>
                            <a href="#">AI 추천</a>
                            <ul class="sub-menu">
                                <li><a href="#">나를 위한 숙소 찾기</a></li>
                                <li><a href="goAiRec.do">AI추천 여행지</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">여행지</a>
                            <ul class="sub-menu">
                                <li><a href="#">관광명소</a></li>
                                <li><a href="#">맛집</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </header>
        <!--  -->
        <main>
            <div class="wrap">
                <div class="talk">
                    <div class="ai-say">
                    	<!-- ai에 쓸 아이콘 이미지 -->
                        <img class="ai-icon" src="https://placehold.co/80" alt="profile">
                        <!-- ai 출력 내용(답변여부에 따라 출력함) -->
                        <div class="ai-text-box">
                            <p>tincidunt id leo. Nulla nisi enim, hendrerit sit amet dapibus nec, ornare eu massa. Nulla vehicula ex et tristique pellentesque. Curabitur sodales eu nibh ut sodales. Nullam ac lacus cursus, faucibus est quis, ornare quam. Sed risus ante, vehicula at tristique porttitor, molestie a enim.</p>
                        </div>
                    </div>
                    <!-- ai 출력 내용에 따른 선택지 -->
                    <div class="selecter-box">선택지 표시</div>
                    <!-- 선택지에 따라 내용 출력 -->
                    <div class="say">
                        <div class="text-box">Duis elementum faucibus orci, ut sodales nulla laoreet sed. In hac habitasse platea dictumst. Sed sed egestas diam. Aenean malesuada ac tortor vitae pellentesque. Proin eu sodales urna. Pellentesque ac dui nec purus viverra eleifend a sollicitudin neque. Sed pellentesque leo id massa ornare tempor.</div>
                    </div>
                    <div class="ai-say">
                        <img class="ai-icon" src="https://placehold.co/80" alt="profile">
                        <!-- ai 출력 내용(답변여부에 따라 출력함) -->
                        <div class="ai-text-box">
                            <p>tincidunt id leo. Nulla nisi enim, hendrerit sit amet dapibus nec, ornare eu massa. Nulla vehicula ex et tristique pellentesque. Curabitur sodales eu nibh ut sodales. Nullam ac lacus cursus, faucibus est quis, ornare quam. Sed risus ante, vehicula at tristique porttitor, molestie a enim.</p>
                        </div>
                	</div>
            	</div>
            </div>
        </main>
        <!--  -->
        <footer>
            <div class="footer-wrap">
                <div class="f-text-h"></div>
                <div class="f-text"></div>
                <div class="f-connect"></div>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
        <script src="assets/js/ie/hf.js"></script>
		<script src="assets/js/ie/geminiAjax.js"></script>
    </body>
</html>