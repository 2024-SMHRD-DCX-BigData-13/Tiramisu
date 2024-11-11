 // 페이지 로딩 시 자동으로 lat, lon 값을 서버로 전송하는 AJAX 요청
        $(document).ready(function() {
			 $.ajax({
                url: 'geodo.do',  // 서버로 데이터 전송
                type: 'POST',
                data: {
                    lat: 37.5171818,
                    lon: 126.9112166
                },
                success: function(response) {
                    // 서버로부터 응답을 받으면 처리
                    console.log('서버 응답:', response);
                },
                error: function(error) {
                    console.error('요청 실패:', error);
                }
            });
        });