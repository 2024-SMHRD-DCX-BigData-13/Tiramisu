// 위도, 경도 값은 서버에서 전달받은 값을 여기에 설정한다고 가정합니다.
let latitude = 37.5171818; // 예시 위도 (서울시청)
let longitude = 126.9112166; // 예시 경도 (서울시청)

// 네이버 지도 초기화
function initMap() {
    // 지도 객체 생성
    const mapOptions = {
        center: new naver.maps.LatLng(latitude, longitude), // 중심 좌표 설정
        zoom: 17 // 지도 확대 정도
    };

    const map = new naver.maps.Map("map", mapOptions); // 지도 생성

    // 마커 생성
    const marker = new naver.maps.Marker({
        position: new naver.maps.LatLng(latitude, longitude), // 마커 위치 설정
        map: map, // 지도에 마커 추가
        title: "영등포 라이프스타일 F HOTEL" // 마커 타이틀
    });
}

// 지도 초기화 함수 호출
initMap();
