(function(){
  $(window).scroll(function () {
    var top = $(document).scrollTop();
    $('.splash').css({
      'background-position': '0px -'+(top/3).toFixed(2)+'px'
    });

    if(top > 50) 
      $('#static_pages-home > .navbar').removeClass('navbar-transparent');
    else
      $('#static_pages-home > .navbar').addClass('navbar-transparent');
  });

  $("a[href='#']").click(function(e) {
    e.preventDefault();
  });
})();