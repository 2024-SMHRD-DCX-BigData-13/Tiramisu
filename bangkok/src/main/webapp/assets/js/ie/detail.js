let num = 1;  // 초기 값 설정

// 페이지 로드 시, 초기 값으로 서버에 요청
$(document).ready(function() {
    updateData(num);
});

// 값 증가 함수
function valueUp() {
    if (num < 5) {  // 최대값 설정
        num += 1;
    }
    updateData(num);
}

// 값 감소 함수
function valueDown() {
    if (num > 1) {  // 최소값 설정
        num -= 1;
    }
    updateData(num);
}

// 서버에 num 값을 보내고, JSP에서 사용할 data를 업데이트
function updateData(num) {
    $.ajax({
        url: "detailsAjax.do", // 서버로 요청
        type: "get",
        data: { 'num': num },
        success: function(res) {
            // 서버에서 받은 값을 JSP의 hidden input이나 DOM에 바로 반영
            $("#data").val(res);  // 서버에서 받은 값을 hidden input의 value로 설정
            console.log("서버에서 받은 값:", res);

            // 페이지 내 특정 부분을 업데이트 (예: 이미지, 객실 정보 등)
            updatePageContent(res);
        },
        error: function(xhr, status, error) {
            console.error("AJAX 오류:", status, error);
        }
    });
}

function updatePageContent(data) {
    // 받은 데이터를 hidden input에 반영하여 JSP에서 조건문에 사용
    $('#dataNum').val(data);
}
