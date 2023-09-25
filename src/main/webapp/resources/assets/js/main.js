(function($) {
  
  "use strict";  

  $(window).on('load', function() {

  /* Page Loader active
  ========================================================*/
    $('#preloader').fadeOut();

  /* MixitUp
  ========================================================================== */
  $('#portfolio').mixItUp();

  /* Sticky Nav
  ========================================================================== */
  var stickyToggle = function(sticky, stickyWrapper, scrollElement) {
    var stickyHeight = sticky.outerHeight();
    var stickyTop = stickyWrapper.offset().top;
    if (scrollElement.scrollTop() >= stickyTop){
      stickyWrapper.height(stickyHeight);
      sticky.addClass("is-sticky");
    }
    else{
      sticky.removeClass("is-sticky");
      stickyWrapper.height('auto');
    }
  };
  
  // Find all data-toggle="sticky-onscroll" elements
  $('[data-toggle="sticky-onscroll"]').each(function() {
    var sticky = $(this);
    var stickyWrapper = $('<div>').addClass('sticky-wrapper'); // insert hidden element to maintain actual top offset on page
    sticky.before(stickyWrapper);
    sticky.addClass('sticky');
    
    // Scroll & resize events
    $(window).on('scroll.sticky-onscroll resize.sticky-onscroll', function() {
      stickyToggle(sticky, stickyWrapper, $(this));
    });
    
    // On page load
    stickyToggle(sticky, stickyWrapper, $(window));
  });
    
  /* slicknav mobile menu active
  ========================================================================== */
  $('.mobile-menu').slicknav({
      prependTo: '.navbar-header',
      parentTag: 'liner',
      allowParentLinks: true,
      duplicate: true,
      label: '',
      closedSymbol: '<i class="lni-chevron-right"></i>',
      openedSymbol: '<i class="lni-chevron-down"></i>',
    });

  /* WOW Scroll Spy
  ========================================================*/
   var wow = new WOW({
    //disabled for mobile
      mobile: false
  });
  wow.init();

  /* Nivo Lightbox 
  ========================================================*/
  $('.lightbox').nivoLightbox({
      effect: 'fadeScale',
      keyboardNav: true,
    });

  /* Counter
  ========================================================*/
  $('.counterUp').counterUp({
   delay: 10,
   time: 1000
  });

  /* Range Slider
  ========================================================*/
   $("#range").ionRangeSlider({
    hide_min_max: true,
    keyboard: true,
    min: 0,
    max: 5000,
    from: 1000,
    to: 4000,
    type: 'double',
    step: 1,
    prefix: "$",
    grid: true
  });

  /* Testimonials Carousel 
  ========================================================*/
  var owl = $("#testimonials");
    owl.owlCarousel({
      navigation: false,
      pagination: true,
      slideSpeed: 1000,
      stopOnHover: true,
      autoPlay: true,
      items: 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [980,2],
      itemsTablet: [768,1],
      itemsTablet: [767,1],
      itemsTabletSmall: [480,1],
      itemsMobile : [479,1],
    });   

  /* Latest Property Owl Carousel active
  ========================================================*/
  var owl = $("#latest-property");
    owl.owlCarousel({
      navigation: false,
      pagination: true,
      slideSpeed: 1000,
      stopOnHover: true,
      autoPlay: true,
      items: 3,
      itemsDesktopSmall: [1024, 2],
      itemsTablet: [600, 1],
      itemsMobile: [479, 1]
    });

  /* Latest Property Owl Carousel active
  ========================================================*/
  var owl = $("#listing-carousel");
    owl.owlCarousel({
      navigation: true,
      pagination: false,
      slideSpeed: 1000,
      stopOnHover: true,
      autoPlay: false,
      items: 1,
      itemsDesktopSmall: [1024, 1],
      itemsTablet: [600, 1],
      itemsMobile: [479, 1]
    });

  /* property Owl Carousel active
  ========================================================*/
  var owl = $("#property-slider");
    owl.owlCarousel({
      navigation: true,
      pagination: false,
      slideSpeed: 1000,
      stopOnHover: true,
      autoPlay: true,
      items: 1,
      itemsDesktopSmall: [1024, 1],
      itemsTablet: [600, 1],
      itemsMobile: [479, 1]
    });

    var newProducts = $('#listing-carousel');
    newProducts.find('.owl-prev').html('<i class="lni-chevron-left"></i>');
    newProducts.find('.owl-next').html('<i class="lni-chevron-right"></i>');

    var touchSlider = $('#property-slider');
    touchSlider.find('.owl-prev').html('<i class="lni-chevron-left"></i>');
    touchSlider.find('.owl-next').html('<i class="lni-chevron-right"></i>');

    var testiCarousel = $('.testimonials-carousel');
    testiCarousel.find('.owl-prev').html('<i class="lni-chevron-left"></i>');
    testiCarousel.find('.owl-next').html('<i class="lni-chevron-right"></i>');

    /* owl Carousel active
    ========================================================*/   
    var owl;
    $(window).on('load', function() {
        owl = $("#owl-demo");
        owl.owlCarousel({
            navigation: false, // Show next and prev buttons
            slideSpeed: 300,
            paginationSpeed: 400,
            singleItem: true,
            afterInit: afterOWLinit, // do some work after OWL init
            afterUpdate : afterOWLinit
        });

        function afterOWLinit() {
            // adding A to div.owl-page
            $('.owl-controls .owl-page').append('<a class="item-link" />');
            var pafinatorsLink = $('.owl-controls .item-link');
            /**
             * this.owl.userItems - it's your HTML <div class="item"><img src="http://www.ow...t of us"></div>
             */
            $.each(this.owl.userItems, function (i) {
              $(pafinatorsLink[i])
                  // i - counter
                  // Give some styles and set background image for pagination item
                  .css({
                      'background': 'url(' + $(this).find('img').attr('src') + ') center center no-repeat',
                      '-webkit-background-size': 'cover',
                      '-moz-background-size': 'cover',
                      '-o-background-size': 'cover',
                      'background-size': 'cover'
                  })
                  // set Custom Event for pagination item
                  .on('click',function () {
                      owl.trigger('owl.goTo', i);
                  });

            });
             // add Custom PREV NEXT controls
            $('.owl-pagination').prepend('<a href="#prev" class="prev-owl"/>');
            $('.owl-pagination').append('<a href="#next" class="next-owl"/>');
            // set Custom event for NEXT custom control
            $(".next-owl").on('click',function () {
                owl.trigger('owl.next');
            });
            // set Custom event for PREV custom control
            $(".prev-owl").on('click',function () {
                owl.trigger('owl.prev');
            });
        }
      });

      /* Property Grids active
      ========================================================*/
      var itemList = $('.listing-container');
      var gridStyle = $('.grid');
      var listStyle = $('.list');

      $('.list,switchToGrid').on('click',function(e) {
        e.preventDefault();
        itemList.addClass("list-layout");
        itemList.removeClass("grid-layout");
        gridStyle.removeClass("active");
        listStyle.addClass("active");
      });

      gridStyle.on('click',function(e) {
        e.preventDefault();
        listStyle.removeClass("active");
        $(this).addClass("active");
        itemList.addClass("grid-layout");
        itemList.removeClass("list-layout");
      });

      /* Back Top Link active
      ========================================================*/
        var offset = 200;
        var duration = 500;
        $(window).scroll(function() {
          if ($(this).scrollTop() > offset) {
            $('.back-to-top').fadeIn(400);
          } else {
            $('.back-to-top').fadeOut(400);
          }
        });

        $('.back-to-top').on('click',function(event) {
          event.preventDefault();
          $('html, body').animate({
            scrollTop: 0
          }, 600);
          return false;
        });

      /* Show options js
      ========================================================*/
      $('.show-options').on("click", function() {
        $('.option-hide').slideToggle('slow');
        $(this).toggleClass('active');
        event.preventDefault();
      });

      /* stellar js
      ========================================================*/
      $.stellar({
        horizontalScrolling: false,
        verticalOffset: 40
      });

  });      

}(jQuery));