/* Initialize Swiper */
// var swiper = new Swiper('.swiper-container', {
  
//   loop: true,        // 슬라이드 무한 반복

//   slidesPerView: 3,   // 동시에 보여줄 슬라이드 갯수
//   spaceBetween: 30,   // 슬라이드 간의 거리(px 단위)
//   slidesPerGroup: 3,  // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
//   autoplay: 2000,
//   loopFillGroupWithBlank: true,   // 그룹수가 맞지 않을 경우 빈칸으로 채우기 여부
//   //centeredSlides: true, // 다음 슬라이드의 모습이 50%만 보입니다.(중앙)
//   autoplayDisableOnInteraction: true,
//   pagination: {
//     el: '.swiper-pagination',  //페이지의 순서를 나타내는 불릿
//     clickable: true,           // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
//   },
//   navigation: {  // 페이지를 넘기는 버튼
//     nextEl: '.swiper-button-next',
//     prevEl: '.swiper-button-prev',
//   }
  

// });


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