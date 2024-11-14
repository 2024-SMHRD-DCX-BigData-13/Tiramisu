//
$(document).ready(() => {
    const sliderWidth = $(".img-slider img").outerWidth();
    const totalWidth = sliderWidth * $(".img-slider").length + 30 * ($(".img-slider").length - 1); // 괄호 수정
    let isActive = false;

    $("#banner").mousemove((e) => {
        if (isActive) return;

        const mouseX = e.pageX - $("#banner").offset().left;
        const maxSlide = totalWidth - $("#banner").width();
        const moveDistance = Math.max(0, Math.min(maxSlide * (mouseX / $("#banner").width()), maxSlide));
        $("#banner ul").css({
            "transform": `translateX(-${moveDistance}px)`
        });
    });

    $(".img-slider").click(function() {
        isActive = !isActive;

        if (isActive) {
            $(this).addClass("highlight");
            $(this).find("img").addClass("highlight");
            $("#banner ul").addClass("fixed");
            $(this).find(".banner-text").fadeIn();
        } else {
            $(this).removeClass("highlight");
            $(this).find("img").removeClass("highlight");
            $("#banner ul").removeClass("fixed");
            $(this).find(".banner-text").fadeOut();
        }
    });
    var itemCount = $(".result-list li").length;
    $(".result-top-text > p").text("검색 결과 " + itemCount + "건");
    
    
    
    //
    let itemsPerPage = 12;
	let totalItems = $('.result-list li').length;
	let totalPages = Math.ceil(totalItems / itemsPerPage);
	let currentPage = 1;
	
	function displayItems(page) {
	    let startIndex = (page - 1) * itemsPerPage;
	    $('.result-list li').hide().slice(startIndex, startIndex + itemsPerPage).show();
	    $('.page').removeClass('active').filter(`[data-page="${page}"]`).addClass('active');
	}
	
	function createPagination() {
	    let paginationDiv = $('#pagination');
	    paginationDiv.empty();
	
	    for (let i = 1; i <= totalPages; i++) {
	        paginationDiv.append(`<a href="#" class="page" data-page="${i}"><p>${i}</p></a>`);
	    }
	}
	function updatePaginationArrows() {
	    if (currentPage === 1) {
	        $('.left-arrow').prop('disabled', true);
	    } else {
	        $('.left-arrow').prop('disabled', false);
	    }
	
	    if (currentPage === totalPages) {
	        $('.right-arrow').prop('disabled', true);
	    } else {
	        $('.right-arrow').prop('disabled', false);
	    }
	}
	
	$(document).on('click', '.page', function(e) {
	    e.preventDefault();
	    currentPage = $(this).data('page');
	    displayItems(currentPage);
	    updatePaginationArrows();
	});
	
	$(document).on('click', '.left-arrow', function() {
	    if (currentPage > 1) {
	        currentPage--;
	        displayItems(currentPage);
	        updatePaginationArrows();
	    }
	});
	
	$(document).on('click', '.right-arrow', function() {
	    if (currentPage < totalPages) {
	        currentPage++;
	        displayItems(currentPage);
	        updatePaginationArrows();
	    }
	});
	
	createPagination();
	displayItems(currentPage);
	updatePaginationArrows();
});




//
$(document).ready(() => {
    $(".img-slider").click(function() {
        $(this).toggleClass("active");
    });
});