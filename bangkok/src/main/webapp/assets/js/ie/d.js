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
});
