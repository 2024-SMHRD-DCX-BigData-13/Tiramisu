let count = 1;

function valueUp() {
	if (count < 10) {
		count += 1;
	}
	$.ajax({
		url: "detailsBtn.do", // 컨트롤러 URL
		type: "get",
		data: {
			'count': count
		},
		success: function(response) {
			let data = response.updatedCount; // 예시로 updatedCount를 사용
			updatePageData(data);
		},
		error: function(error) {
			console.log("Error:", error);
		}
	});

}

function valueDown() {
	if (count > 1) {
		count -= 1;
	}
	$.ajax({
		url: "detailsBtn.do", // 컨트롤러 URL
		type: "get",
		data: {
			'count': count
		},
		success: function(response) {
			let data = response.updatedCount; // 예시로 updatedCount를 사용
			updatePageData(data);
		},
		error: function(error) {
			console.log("Error:", error);
		}
	});
}
function updatePageData(data) {
    // JavaScript에서 데이터를 사용하여 HTML 요소를 업데이트
    // 예: `data`를 사용하여 특정 항목을 업데이트
    $('.info-box').each(function(index) {
        if (index == data) {
            $(this).show(); // 해당하는 인덱스의 요소를 보여줌
        } else {
            $(this).hide(); // 다른 인덱스의 요소는 숨김
        }
    });

    $('.info-text').each(function(index) {
        if (index == data) {
            $(this).show(); // 해당하는 인덱스의 정보를 표시
        } else {
            $(this).hide(); // 다른 인덱스의 정보를 숨김
        }
    });
}