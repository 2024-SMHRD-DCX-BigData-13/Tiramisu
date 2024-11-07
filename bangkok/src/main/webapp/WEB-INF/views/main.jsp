<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <header>
            <div class="header-wrap">
                <h1 class="logo">
                    <a href="/">
                        <img src="./img/logo.png" alt="logo">
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
                    <div class="right-text">
                        <p>여행지</p>
                        <p>여행자</p>
                    </div>
                    <div class="right-box">
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
                        <input type="number" name="traveler">
                    </div>
                </div>
                <!-- nav -->
                <div class="hamburger-wrap">
                    <button class="hamburger">
                        <p class="map-name">메뉴보기</p>
                        <img src="./img/hamburger.png" alt="hamburger-icon">
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
                                <li><a href="#">AI추천 여행지</a></li>
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
        <main>
            <div class="wrap">
                <section id="banner">
                    <ul>
                        <li class="img-slider">
                            <img src="https://placehold.co/420x260" alt="img">
                            <div class="banner-text">
                                <h2>제목</h2>
                                <p>설명</p>
                            </div>
                        </li>
                        <li class="img-slider">
                            <img src="https://placehold.co/420x260" alt="img">
                            <div class="banner-text">
                                <h2>제목</h2>
                                <p>설명</p>
                            </div>
                        </li>
                        <li class="img-slider">
                            <img src="https://placehold.co/420x260" alt="img">
                            <div class="banner-text">
                                <h2>제목</h2>
                                <p>설명</p>
                            </div>
                        </li>
                        <li class="img-slider">
                            <img src="https://placehold.co/420x260" alt="img">
                            <div class="banner-text">
                                <h2>제목</h2>
                                <p>설명</p>
                            </div>
                        </li>
                        <li class="img-slider">
                            <img src="https://placehold.co/420x260" alt="img">
                            <div class="banner-text">
                                <h2>제목</h2>
                                <p>설명</p>
                            </div>
                        </li>
                        <li class="img-slider">
                            <img src="https://placehold.co/420x260" alt="img">
                            <div class="banner-text">
                                <h2>제목</h2>
                                <p>설명</p>
                            </div>
                        </li>
                    </ul>
                </section>
                <section id="search-result">
                    <div class="result-top-text">
                        <p>검색 결과 n건</p>
                        <select name="" id="">
                            <option>3줄 보기</option>
                            <option>4줄 보기</option>
                            <option>5줄 보기</option>
                        </select>
                    </div>
                    <ul class="result-list">
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>id viverra neque dui ut ante. Cras sed eros eu odio pretium rutrum at a nunc. Fusce ut turpis felis.</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="https://placehold.co/270x200" alt="small-img">
                                <div class="text-box">
                                    <h3>제목</h3>
                                    <p>설명</p>
                                </div> 
                            </a>
                        </li>
                    </ul>
                    <div class="paging-button">
                        <img src="./img/arrow-left.png" alt="left-arrow" class="left-arrow">
                        <div class="number-button">
                            <a href="#"><p>1</p></a>
                            <a href="#"><p>2</p></a>
                            <a href="#"><p>3</p></a>
                            <a href="#"><p>4</p></a>
                            <a href="#"><p>5</p></a>
                            <a href="#"><p>6</p></a>
                        </div>
                        <img src="./img/arrow-right.png" alt="right-arrow" class="right-arrow">
                    </div>
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
        <script src="./script/script.js"></script>
    </body>
</html>