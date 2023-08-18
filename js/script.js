$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop()) {
            $('header').addClass('sticky');
        }
        else {
            $('header').removeClass('sticky');
        }
    })
    $('a').click(function (event) {
        $('html, body').animate({
            scrollTop: $($.attr(this, 'href')).offset().top
        }, 700);
        event.preventDefault();
    });
    $(function () {
        $(".banner-slider__scroll").on("click", function (e) {
          var $slider = $(".clearfix");
          var sliderHeight = $slider.height();
          var sliderOffset = $slider.offset().top;
      
          $("html, body").animate({
            scrollTop: sliderHeight + sliderOffset
          }, 1300);
        });
      });
      
}
)