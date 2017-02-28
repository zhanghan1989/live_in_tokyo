(function(){
  $(window).scroll(function () {
    var top = $(document).scrollTop();
    $('.splash').css({
      'background-position': '0px -'+(top/3).toFixed(2)+'px'
    });
    if(top > 50)
      $('.navbar').removeClass('static_pages-home');
    else
      $('.navbar').addClass('static_pages-home');
  });

  $("a[href='#']").click(function(e) {
    e.preventDefault();
  });
})();