// darkmod
$(document).ready(function() {
    if(localStorage.getItem('theme') === 'dark') {
        $('body').addClass('dark').removeClass('light');
        $(':root').addClass('dark').removeClass('light');
    }

    $("#vButton").click(function(){
        $('body').toggleClass('dark light');
        $(':root').toggleClass('dark light');

        if ($('body').hasClass('dark')) {
            localStorage.setItem('theme', 'dark');
            $("#vButton").text("밝게");
        } else {
            localStorage.setItem('theme', 'light');
            $("#vButton").text("어둡게");
        }
    });
});

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