//
$(document).ready(function() {
    $('#banner').hover(() => {
        if (!$('.slide-overlay').is(':animated')) {
            $('.slide-overlay').stop(true, true).fadeIn(260);
        }
      }, () => {
        $('.slide-overlay').stop(true, true).fadeOut(100);
      }
    );
});

//
$(document).ready(function() {
    let imgWidth = $(".slide-item").outerWidth();
    let slideCount = $(".slide-img").length;
    let currentIndex = 0;

    function updateProgress() {
        let percentage = ((currentIndex + 1) / slideCount) * 100;
        $(".progress").stop().animate({ width: percentage + "%" }, 300);
    }
    function slideToIndex(index) {
        $(".slide-item").stop().animate({
            marginLeft: `-${imgWidth * index}px`
        }, 300);
    }

    $(".arrow-left").click(function() {
        if (currentIndex > 0) {
            currentIndex--;
            slideToIndex(currentIndex);
            updateProgress();
        }
    });

    $(".arrow-right").click(function() {
        if (currentIndex < slideCount - 1) {
            currentIndex++;
            slideToIndex(currentIndex);
            updateProgress();
        }
    });
    updateProgress();

    $(window).on('resize', function() {
        imgWidth = $(".slide-item").outerWidth();
        slideToIndex(currentIndex);
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
    const progressBar = $(".progress-b");

    function updateProgressBar() {
        var sliderWidth = slider[0].getBoundingClientRect().width;
        var maxTranslate = -(totalItems - 1) * sliderWidth;
        var progress = Math.abs(currentTranslate) / Math.abs(maxTranslate) * 100;

        progressBar.css("width", progress + "%");
    }

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
        updateProgressBar();
    });

    slider.on("mouseup", function(e) {
        if (!isDragging) return;
        isDragging = false;
        slider.css("cursor", "grab");

        var maxTranslate = -(totalItems - 1) * slider[0].getBoundingClientRect().width;
        if (currentTranslate > 0) {
            currentTranslate = 0;
        } else if (currentTranslate < maxTranslate) {
            currentTranslate = maxTranslate;
        }

        previousTranslate = currentTranslate;
        slider.css("transform", "translateX(" + currentTranslate + "px)");
        updateProgressBar();
    });

    slider.on("mouseleave", function() {
        if (isDragging) {
            isDragging = false;
            slider.css("cursor", "grab");
            previousTranslate = currentTranslate;
            slider.css("transform", "translateX(" + currentTranslate + "px)");
            updateProgressBar();
        }
    });
});












