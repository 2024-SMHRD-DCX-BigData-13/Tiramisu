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
});




//
$(document).ready(() => {
    $(".img-slider").click(function() {
        $(this).toggleClass("active");
    });
});