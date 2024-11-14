$(document).ready(() => {
    const $slider = $(".small-intro-slider");
    const $sliderItems = $(".small-intro-slider li");
    const slideWidth = $sliderItems.outerWidth(true);
    const totalWidth = slideWidth * $sliderItems.length + 24 * ($sliderItems.length - 1);

    let isMouseOver = false;

    $slider.css("transform", "translateX(0)");

    $slider.mouseenter(() => { isMouseOver = true; }).mouseleave(() => { isMouseOver = false; });

    $slider.mousemove((e) => {
        if (!isMouseOver) return;

        const mouseX = e.pageX - $slider.offset().left;
        const maxSlide = totalWidth - $slider.width();
        const moveDistance = Math.max(0, Math.min(maxSlide * (mouseX / $slider.width()), maxSlide));

        $slider.css("transform", `translateX(-${moveDistance}px)`);
    });
    
    //
	let imgWidth = $(".info-box").outerWidth();
    let slideCount = $(".info-box").length;
    let currentIndex = 0;

    function updateSlide() {
        $('#detail-middle ul').stop().animate({
            marginLeft: `-${imgWidth * currentIndex}px`
        }, 300);
        $(".progress").stop().animate({ width: ((currentIndex + 1) / slideCount) * 100 + "%" }, 300);
    }

    $(".arrow-left").click(function() {
        if (currentIndex > 0) {
            currentIndex--;
            updateSlide();
        }
    });

    $(".arrow-right").click(function() {
        if (currentIndex < slideCount - 1) {
            currentIndex++;
            updateSlide();
        }
    });

    updateSlide();

    $(window).on('resize', function() {
        imgWidth = $(".info-box").outerWidth();
        updateSlide();
    });
});
