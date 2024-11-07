<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>크롤링 결과</title>
</head>
<body>
    <h1>호텔 객실 정보</h1>

    <!-- 크롤링된 객실 정보 출력 -->
    <c:forEach var="room" items="${roomDetails}">
        <p>${room}</p>
    </c:forEach>

</body>
</html>
