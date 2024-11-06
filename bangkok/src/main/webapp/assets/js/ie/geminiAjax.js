$('#btn01').on( 'click', request );

function request(){
	
	// 2. ajax를 이용해서 비동기 요청 보내기
	// { 'key' : 'value', ... } : 객체
	$.ajax({
		url : 'aiRecommened.do', // 요청 URL 주소
		type : 'get', // GET? POST?
		data : {
			// 보내는 데이터를 객체 형식으로 정의
			// "name" : "value" 형태
			// $('#선택자).html() : 여-닫는 태그 사이의 글자를 전부 가져오기
			// $('#선택자).val() : 입력창(input, textarea)에 적힌 글자 가져오기
			'input' : $('#input').val()
		},
		success : function(res){
			// 요청이 성공해서, 응답이 이루어진 후에 실행되는 함수
			// 응답반은 데이터가 자동으로 res에 담김
			$('#output').html(res);
		}
	});
	
}
