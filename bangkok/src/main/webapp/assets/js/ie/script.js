//
$.fn.toggleIcon = function() {
    this.find(".icon1").css("transform", "translateY(12px) rotate(-45deg)");
    this.find(".icon2").css("opacity", "0");
    this.find(".icon3").css("transform", "translateY(-10px) rotate(45deg)");
    
    return this;
};
$.fn.restoreIcon = function() {
    this.find(".icon1").css("transform", "translateY(0) rotate(0deg)");
    this.find(".icon2").css("opacity", "1");
    this.find(".icon3").css("transform", "translateY(0) rotate(0deg)");
    
    return this;
};


// 
$(".hamburger").click((event) => {
    if ($("nav").css("display") == "none") {
        $("nav").slideDown(260);
        $(".hamburger-icon").toggleIcon();
        $(".search-focus").slideUp(260);
    } else {
        $("nav").slideUp(260);
        $(".hamburger-icon").restoreIcon();
    }
        event.stopPropagation();
});
$(".hamburger").focusout(() => {
    $("nav").slideUp(260);
    $(".hamburger-icon").restoreIcon();
});

//
$(".search-box").click((event) => {
    if ($(".search-focus").css("display") == "none"){
        $(".search-focus").slideDown(260);
        $("nav").slideUp(260);
        $(".hamburger-icon").restoreIcon();
    } else {
        $(".search-focus").slideUp(260);
    }
    event.stopPropagation();
});

// 
$(document).click((event) => {
    if (!$(event.target).closest(".search-box").length && !$(event.target).closest(".search-focus").length && !$(event.target).closest(".hamburger").length) {
        $(".search-focus").slideUp(260);
        $("nav").slideUp(260);
    }
});

//
$(document).ready(function() {
    $('#banner').hover(() => {
        if (!$('.slider-overlay').is(':animated')) {
            $('.slider-overlay').stop(true, true).fadeIn(260);
        }
      }, () => {
        $('.slider-overlay').stop(true, true).fadeOut(100);
      }
    );
});

//
$(".arrow-left").click(() => {
    $('.slider-item').animate({'marginLeft':'-1200px'}, function(){
        $('.slide-img').appendTo('.slider-item');
        $('.slider-item').css({'marginLeft':'0px'});
    });
});
$(".arrow-right").click(() => {
    $('.slider-item').animate({'marginLeft':'1800px'}, function(){
        $('.slide-img').prependTo('.slider-item');
        $('.slider-item').css({'marginLeft':'0px'});
    });
});

//
$(document).ready(function() {
    var isDragging = false;
    var startPosition = 0;
    var currentTranslate = 0;
    var previousTranslate = 0;
    var totalItems = $(".theme-item li").length;

    const slider = $(".theme-item");

    slider.on("mousedown", function(e) {
        isDragging = true;
        startPosition = e.clientX;
        slider.css("cursor", "grabbing");
    });

    slider.on("mousemove", function(e) {
        if (!isDragging) return;

        var currentPosition = e.clientX;
        var moveDistance = currentPosition - startPosition;
        currentTranslate = previousTranslate + moveDistance;

        slider.css("transform", "translateX(" + currentTranslate + "px)");
    });

    slider.on("mouseup", function(e) {
        if (!isDragging) return;

        isDragging = false;
        slider.css("cursor", "grab");

        if (currentTranslate > 0) {
            currentTranslate = 0;
        } else if (currentTranslate < -(totalItems - 1) * 100) {
            currentTranslate = -(totalItems - 1) * 100;
        }

        previousTranslate = currentTranslate;
        slider.css("transform", "translateX(" + currentTranslate + "px)");
    });

    slider.on("mouseleave", function() {
        if (isDragging) {
            isDragging = false;
            slider.css("cursor", "grab");
            previousTranslate = currentTranslate;
            slider.css("transform", "translateX(" + currentTranslate + "px)");
        }
    });
});
