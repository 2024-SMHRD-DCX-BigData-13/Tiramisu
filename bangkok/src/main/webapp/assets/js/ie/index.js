$(document).ready(function() {
    // 기본값으로 '호텔' 데이터를 로드
    const defaultType = '호텔';
    updateData(defaultType);  // 기본값으로 데이터 로드

    // 버튼 클릭 시 data-type 값을 서버로 전송하는 함수
    $('.theme-tabs button').on('click', function() {
        console.log('클릭됨!');
        const type = $(this).data('type');
        console.log('클릭된 버튼의 data-type:', type);
        updateData(type);  // 선택된 버튼 타입에 맞는 데이터 전송
    });
});

// 서버에 요청을 보내는 AJAX 함수
function updateData(type) {
    $.ajax({
        url: "indexAjax.do",  // 서버 URL (필요에 따라 수정)
        type: "get",
        data: { 'type': type },  // 'type' 파라미터로 data-type 값을 전달
        success: function(res) {
            console.log("서버에서 받은 응답:", res);  // 응답 확인

            // 서버에서 받은 데이터가 유효한지 체크
            if (res.lodgings && res.urls) {
                updatePageContent(res.lodgings, res.urls);
            } else {
                console.error("서버 응답에 문제가 있습니다.");
            }
        },
        error: function(xhr, status, error) {
            console.error("AJAX 오류:", status, error);
        }
    });
}

// 페이지 업데이트 함수
function updatePageContent(lodgings, urls) {
    const themeItemList = $('.theme-item');
    themeItemList.empty();  // 기존 리스트 비우기

    // lodgings와 urls를 결합하여 콘텐츠 추가
    lodgings.forEach((lodging, i) => {
        // lodgings의 lod_id와 urls의 lod_id가 같은 값 찾기
        const url = urls.find(url => url.lod_id === lodging.lod_id);

        if (url) {
            // 새로운 리스트 아이템 생성
            const itemHTML = `
                <li>
                    <form action="goDetails.do" method="post">
                        <input type="hidden" name="lod_id" value="${lodging.lod_id}">
                        <img src="${url.img_url}" alt="item" style="width: 100%; height: 200px; object-fit: cover;" onerror="this.src='default-image.jpg'"> <!-- 이미지 높이 줄이기, 비율 유지 -->
                        <div class="theme-text">
                            <h3>${lodging.lod_name}</h3>
                            <p>${lodging.lod_desc}</p>
                            <button type="submit" style="background-color: #007bff; color: white; padding: 10px 20px; border: none; cursor: pointer;">자세히 보기</button> <!-- '자세히 보기' 버튼 추가 -->
                        </div>
                    </form>
                </li>
            `;
            themeItemList.append(itemHTML);  // theme-item에 새로운 아이템 추가
        }
    });
}
