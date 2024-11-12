$(document).ready(function() {
    // 페이지 로드 시 자동으로 요청 보내기
    request();
});
function request() {
    $.ajax({
        url: 'goIndex.do',  // 서버로 데이터 전송
        type: 'get',
        dataType: 'json',    // 서버 응답을 JSON 형식으로 받음
        success: function(response) {
            console.log('서버 응답:', response);

            // 응답이 배열이고 첫 번째 이미지가 있으면 처리
            if (Array.isArray(response) && response.length > 0 && response[0].img_url) {
                // 첫 번째 이미지 URL로 HTML 요소의 `src` 속성 업데이트
                $('#imageElement').attr('src', response[0].img_url);
            } else {
                $('#output').text("이미지 데이터가 없습니다.");
            }
        },
        error: function(error) {
            console.error('요청 실패:', error);
            $('#output').text("요청에 실패했습니다.");
        }
    });
}