

$(function () {
    $('table').footable().bind('footable_filtering', function (e) {
    });

    $('.clear-filter').click(function (e) {
        var id='user-grid';
        var inputSelector='.filter';
        $(inputSelector).each( function(i,o) {
            $(o).val('');
        });
        var data=$.param($(inputSelector));
        $.fn.yiiGridView.update(id, {data: data});
        return false;

    });

    $('.send-filter').click(function (e) {
        var id='user-grid';
        var inputSelector='.filter';
        var data=$.param($(inputSelector));
        $.fn.yiiGridView.update(id, {data: data});
        return false;
    });
});



$(document).ready(function () {

    $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion           
        width: 'auto', //auto or any width like 600px
        fit: true,   // 100% fit in a container
        closed: 'accordion' // Start closed if in accordion view

    });

    $(".owl-carousel").owlCarousel({

        autoPlay: 3000, //Set AutoPlay to 3 seconds
        items: 3, //3 items above 1000px browser width
        itemsDesktop: [1000, 2], //5 items between 1000px and 901px
        itemsDesktopSmall: [900, 2], // betweem 900px and 601px
        itemsTablet: [600, 1], //2 items between 600 and 0
        itemsMobile: false // itemsMobile disabled - inherit from itemsTablet option

    });

  // Custom Navigation Events
  $(".next").click(function(){
      $(".owl-carousel").trigger('owl.next');
  })
  $(".prev").click(function(){
      $(".owl-carousel").trigger('owl.prev');
  })


});
