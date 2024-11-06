$('#btn01').on('click', request);

function request() {
    $.ajax({
        url: 'aiRecommened.do',
        type: 'get',
        data: {
            'input': $('#input').val()
        },
        success: function(res) {
            // 불필요한 * 제거 및 포맷팅
            const formattedRes = res
                .replace(/\*+/g, '') // 불필요한 * 기호 제거
                .replace(/(\r\n|\r|\n)/g, '<br>') // 줄바꿈 유지
                .replace(/([가-힣a-zA-Z]+:)/g, '<strong>$1</strong>'); // 주요 항목을 볼드 처리

            $('#output').html(formattedRes);
        }
    });
}
