$('.slider-for').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  arrows: false,
  fade: true,
  asNavFor: '.slider-nav'
});
$('.slider-nav').slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  asNavFor: '.slider-for',
  dots: true,
  focusOnSelect: true
});

$('a[data-slide]').click(function(e) {
  e.preventDefault();
  var slideno = $(this).data('slide');
  $('.slider-nav').slick('slickGoTo', slideno - 1);
});


/* 스크롤 내리면 로고는 없어지고, 상단 navbar 고정 */
// window.onscroll = function() {myFunction()};

// var navbar = document.getElementById("navbar");
// var sticky = navbar.offsetTop;

// function myFunction() {
//   if (window.pageYOffset >= sticky) {
//     navbar.classList.add("sticky")
//   } else {
//     navbar.classList.remove("sticky");
//   }
// }



/* aside 열리고 닫히고 : content 밀리면서 */
// function openNav() {
//   document.getElementById("aside_area").style.width = "250px";
//   document.getElementById("main_content_area").style.marginLeft = "250px";
// }

// function closeNav() {
//   document.getElementById("aside_area").style.width = "0";
//   document.getElementById("main_content_area").style.marginLeft= "0";
// }