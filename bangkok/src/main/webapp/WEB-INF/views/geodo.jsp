<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <title>간단한 지도 표시하기</title>
    
    <style type="text/css">
            /* 지도 크기 설정 */
        #map {
            width: 300px;
            height: 300px;
        }
    
    </style>
    <script type="text/javascript" src="https://oapi.map.naver.com/openapi/v3/maps.js?ncpClientId=rcitx86g0n"></script>
</head>
<body>
<div id="map"></div>

 <script>
        // 네이버 지도 초기화
        var map = new naver.maps.Map('map', {
            center: new naver.maps.LatLng(37.5665, 126.9780), // 서울 시청 좌표
            zoom: 12
        });
        var naverLoc = new naver.maps.LatLng(37.5665, 126.9780); // 서울 시청 좌표
        
        // 마커 생성
        var marker = new naver.maps.Marker({
            position: naverLoc, // 마커 위치
            map: map, // 마커가 표시될 지도
            title: '서울 시청' // 마커 툴팁
        });

        // 지도 중심을 마커의 위치로 설정
        map.setCenter(location);

        // 지도 줌 레벨 조정
        map.setZoom(20);

    </script>
</body>
</html>