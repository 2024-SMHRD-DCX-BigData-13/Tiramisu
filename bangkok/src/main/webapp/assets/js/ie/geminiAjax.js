$(document).ready(function() {
	// 버튼 클릭 이벤트
	$('#btn').on('click', function() {
		const userInput = $('#input').val().trim();  // 유저가 입력한 값

		if (userInput) {
			// 유저 메시지 화면에 추가
			appendUserMessage(userInput);  // 유저 메시지를 추가하는 함수 호출
			$('#input').val('');  // 입력칸 초기화

			// AI의 답변을 받기 위한 AJAX 요청
			$.ajax({
				url: 'aiRec.do',  // 서버로 요청
				type: 'get',
				data: { 'input': userInput },  // 유저 입력 값 전송
				success: function(res) {
					// AI의 답변을 처리하여 화면에 표시
					const formattedRes = res
						.replace(/\*+/g, '')  // 불필요한 '*' 제거
						.replace(/(\r\n|\r|\n)/g, '<br>')  // 줄바꿈 처리
						.replace(/([가-힣a-zA-Z]+:)/g, '<strong>$1</strong>');  // 항목 볼드 처리

					// AI의 답변 화면에 추가
					appendAIMessage(formattedRes);  // AI 메시지를 추가하는 함수 호출
				},
				error: function(xhr, status, error) {
					console.error("AJAX 오류:", status, error);
				}
			});
		}
	});

	// 엔터키로도 메시지 전송 가능하게 설정
	$('#input').keypress(function(e) {
		if (e.which == 13) {  // 엔터키가 눌렸을 때
			$('#btn').click();
		}
	});
});

// 유저의 메시지를 새로운 박스로 추가하는 함수
function appendUserMessage(message) {
	const userMessageHtml = `
        <div class="say">
            <div class="text-box user-text">${message}</div>
        </div>
    `;
	$('#chat-box').append(userMessageHtml);  // #chat-box에 유저 메시지를 추가
}

// AI의 답변을 새로운 박스로 추가하는 함수
function appendAIMessage(message) {
	const aiMessageHtml = `
        <div class="ai-say">
            <img class="ai-icon" src="https://placehold.co/80" alt="profile">
            <div class="ai-text-box">
                <p>${message}</p>
            </div>
        </div>
    `;
	$('#chat-box').append(aiMessageHtml);  // #chat-box에 AI 메시지를 추가
}
