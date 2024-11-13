let map; // 지도 객체를 전역 변수로 선언

// 네이버 지도 초기화
function initMap(lat, lon) {
    if (!lat || !lon) {
        console.error("위도와 경도 값이 잘못 전달되었습니다.");
        return;
    }

    // 지도 객체 생성 시 중심 좌표를 첫 번째 숙소의 lat, lon으로 설정
    map = new naver.maps.Map("map", {
        center: new naver.maps.LatLng(lat, lon), // 지도 중심 좌표 설정
        zoom: 17 // 지도 확대 정도
    });
}

// setCoordinates 함수 정의 (마커를 지도에 추가)
function setCoordinates(lat, lon, title) {
    if (map && lat && lon) {
        const position = new naver.maps.LatLng(lat, lon);
        const marker = new naver.maps.Marker({
            position: position,
            map: map, // 기존에 생성된 map 객체에 마커 추가
            title: title // 마커에 타이틀 설정
        });
    }
}
