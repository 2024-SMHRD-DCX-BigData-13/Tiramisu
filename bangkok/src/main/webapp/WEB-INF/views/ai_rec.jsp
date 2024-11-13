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
        <%@ include file="/WEB-INF/views/footer.jsp" %>
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