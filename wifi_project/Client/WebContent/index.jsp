<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">

<link rel="stylesheet" href="css/view.css" type="text/css">
<link rel="stylesheet" href="css/aside.css" type="text/css">
<link rel="stylesheet" href="css/buy.css" type="text/css">
<link rel="stylesheet" href="css/slide.css" type="text/css">
<link rel="stylesheet" href="css/swiper.css" type="text/css">
<link rel="stylesheet" href="css/swiper.min.css" type="text/css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"> <!-- 평점등록 시 별모양 나타내는  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>  <!-- 평점등록 시 별 마우스오버 계속 반응  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script> <!-- 날짜포멧 -->
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.11/lodash.min.js"></script>   <!-- 데이터를 정렬/필터/색인할 수 있게 도와주는 오픈소스 Javascript Utility Library -->

<script src="js/swiper.min.js"></script>
<link rel="stylesheet" href="package/swiper-bundle.min.css">  

<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>



<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
/* .w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1} */
</style>



<body>

  <!-- aside 공구현황 -->
  <%@include file="include/aside.jsp"%>


  <!-- !PAGE CONTENT! -->
  <div class="w3-main" style="margin-left:450px;margin-right:40px">




    <!-- Header -->
    <div class="w3-container" id="showcase" style="margin-top: 40px;">
      <div class="mainTitle">
        <h1 class="w3-xxlarge" style="display: inline;"><b> W 1 F 1 같이 사는 가치</b></h1>
      </div>
      
      <!-- 검색영역 -->
      <div id="search_area" >
        <div class="inputSearch">
          <input type="text" name="search" class="search" placeholder="Search.."><br>
        </div>
        <div class="CategorySearch">
          <button type="button" class="btn_search_category" onclick="">과일</button>
          <button type="button" class="btn_search_category" onclick="">육류</button>
          <button type="button" class="btn_search_category" onclick="">채소</button>
          <button type="button" class="btn_search_category" onclick="">생필품</button>
          <button type="button" class="btn_search_category" onclick="">음료</button>
        </div>
      </div>
    </div>
    
    
    
    
    

    <!-- 공구 등록 폼 -->
    <%@include file="include/regItemForm.jsp"%>
    
    <!-- itemView 공구글 상세보기 영역 -->
    <div id="itemView_area" class="itemView_area">
    </div> 


    <!-- 공구 리스트 영역 -->
    <div id="itemlist_area">

      <!-- Recommended item -->
      <div class="w3-container" id="Recommended" style="margin-top:65px;" >
        <h2 class="w3-xlarge text-purple"><b>Recommended item</b></h2>
          <button type="button" class="btn_sort sort_reg"  onclick="allItemlist()">Latest Sort</button>
          <button type="button" class="btn_sort sort_rvs" onclick="allItemlist_sortRvs()">Rating Sort</button>
          <button type="button" class="btn_regItem" onclick="regItemForm()">item +</button>
        <hr style="width:50px;border:5px solid purple;"  class="w3-round">
      
        <!-- 추천공구 리스트  영역  : 슬라이드  -->
        <!-- Swiper -->
        <div class="swiper-container">
          <div class="swiper-wrapper">

          </div>
          <!-- 페이징 -->
          <div class="swiper-pagination"></div>
          <!-- 네비게이션 -->
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
        </div>

      </div>


      <div class="w3-container" id="item" style="margin-top:75px;" >
      <h2 class="w3-xlarge text-purple"><b>item</b></h2>
      <hr style="width:50px; border:5px solid purple; " class="w3-round">
        
      <!-- itemlist 공구 일반글 리스트 -->
        <div id="itemlist_small_area">
        </div>  






    
    <!-- recipe -->
    <div class="w3-container" id="recipe" style="margin-top:75px">
      <h1 class="w3-xlarge text-purple"><b>Recipe</b></h1>
      <hr style="width:50px;border:5px solid purple; text-align: center; " class="w3-round">
    

    <!-- The Team -->
    <div class="w3-row-padding w3-grayscale">
      <div class="w3-col m4 w3-margin-bottom">
        <div class="w3-light-grey">
          <img src="/w3images/team2.jpg" alt="John" style="width:100%">
          <div class="w3-container">
            <h3>John Doe</h3>
            <p class="w3-opacity">CEO & Founder</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
          </div>
        </div>
      </div>
      <div class="w3-col m4 w3-margin-bottom">
        <div class="w3-light-grey">
          <img src="/w3images/team1.jpg" alt="Jane" style="width:100%">
          <div class="w3-container">
            <h3>Jane Doe</h3>
            <p class="w3-opacity">Designer</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
          </div>
        </div>
      </div>
      <div class="w3-col m4 w3-margin-bottom">
        <div class="w3-light-grey">
          <img src="/w3images/team3.jpg" alt="Mike" style="width:100%">
          <div class="w3-container">
            <h3>Mike Ross</h3>
            <p class="w3-opacity">Architect</p>
            <p>Phasellus eget enim eu lectus faucibus vestibulum. Suspendisse sodales pellentesque elementum.</p>
          </div>
        </div>
      </div>
    </div>


  </div>  <!-- w3-main end -->




  <!-- W3.CSS Container -->
  <div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px"><p class="w3-right">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></p></div>








<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}


// Initialize Swiper 
var swiper = new Swiper('.swiper-container', {
  slidesPerView: 3,
  spaceBetween: 30,
  slidesPerGroup: 3,
  loop: true,
  loopFillGroupWithBlank: true,
  pagination: {
    el: '.swiper-pagination',
    clickable: true,
  },
  navigation: {
    nextEl: '.swiper-button-next',
    prevEl: '.swiper-button-prev',
  },
});

</script>
<script text="text/javascript" src="js/item.js"></script>
<script text="text/javascript" src="js/seller.js"></script>
<script text="text/javascript" src="js/buyer.js"></script>
<script text="text/javascript" src="js/slide.js"></script>
<script src="js/swiper.js"></script> 

</body>
</html>
