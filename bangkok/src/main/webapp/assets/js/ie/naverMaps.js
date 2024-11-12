$(document).ready(function() {
    // 페이지 로드 시 자동으로 요청 보내기
    request();
});

function request() {
    $.ajax({
        url: 'naverMaps.do',  // 서버로 데이터 전송
        type: 'get',
        data: {
            'lat': 37.5171818,  // 예시 좌표
            'lon': 126.9112166   // 예시 좌표
        },
        dataType: 'json',  // 응답이 JSON으로 처리되도록 지정
        success: function(response) {
            console.log(response);  // 응답 확인

            // 응답이 배열인지 확인하고 4개 이하의 이미지만 처리
            if (Array.isArray(response) && response.length > 0) {
                $('#output').empty();  // 기존 콘텐츠를 비우기
                // 첫 번째부터 네 번째 이미지까지 처리
                for (let i = 0; i < Math.min(4, response.length); i++) {
                    var img = $('<img>').attr('src', response[i].img_url).attr('alt', 'Image ' + (i + 1));
                    $('#output').append(img);  // 각 이미지를 #output에 추가
                }
            } else {
                $('#output').html("응답이 배열이 아니거나 데이터가 없습니다.");
            }
        },
        error: function() {
            $('#output').html("요청에 실패했습니다.");
        }
    });
};
