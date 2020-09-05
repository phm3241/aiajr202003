<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">


<link rel="stylesheet" href="aside.css" type="text/css">
<link rel="stylesheet" href="buy.css" type="text/css">
<link rel="stylesheet" href="slide.css" type="text/css">
<link rel="stylesheet" href="css/swiper.css" type="text/css">
<link rel="stylesheet" href="css/swiper.min.css" type="text/css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"> <!-- 평점등록 시 별모양 나타내는  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>  <!-- 평점등록 시 별 마우스오버 계속 반응  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script> <!-- 날짜포멧 -->
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.11/lodash.min.js"></script>   <!-- 데이터를 정렬/필터/색인할 수 있게 도와주는 오픈소스 Javascript Utility Library -->

<script src="js/swiper.min.js"></script>
<link rel="stylesheet" href="package/swiper-bundle.min.css">   






<!-- <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script> -->

<!-- CSS only -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>


<!-- <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"> -->



<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script> -->
<!-- <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script> -->






<style>
   /* .panel{
      display: none;
   } */
</style>
<title>Insert title here</title>
</head>      
<body>

   
   <div id="container">

      <!-- aside 공구현황 -->
      <%@include file="/include/aside.jsp"%>


      <!-- <div id="nav">

         <br><br><br><br>
         <a href="#">home</a> <br><br>
         <a href="#">logout</a> <br><br> 
         <a href="#">icon</a>  <br><br>
         <a href="#">icon</a> 
      </div> -->




      <div id="main_content_area">

         <!-- header : 타이틀. 검색기능 -->
         <%@include file="/include/header.jsp"%>

         
         

         <button type="button" class="btn_sort sort_reg"  onclick="allItemlist()">최신순정렬</button>
         <button type="button" class="btn_sort sort_rvs" onclick="allItemlist_sortRvs()">평점순정렬</button>
         
         <button type="button" class="btn_regItem" onclick="regItemForm()">공구글 등록</button>
         
          



         <!-- Swiper -->
         <!-- <div class="swiper-container">
            <div class="swiper-wrapper">
               <div class="swiper-slide">Slide 1</div>
               <div class="swiper-slide">Slide 2</div>
               <div class="swiper-slide">Slide 3</div>
               <div class="swiper-slide">Slide 4</div>
               <div class="swiper-slide">Slide 5</div>
               <div class="swiper-slide">Slide 6</div>
               <div class="swiper-slide">Slide 7</div>
               <div class="swiper-slide">Slide 8</div>
               <div class="swiper-slide">Slide 9</div>
               <div class="swiper-slide">Slide 10</div>
            </div> -->
            <!-- Add Pagination -->
            <!-- <div class="swiper-pagination"></div> -->
            <!-- Add Arrows -->
            <!-- <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
         </div> -->



         <!-- 공구 등록 폼 -->
         <%@include file="/include/regItemForm.jsp"%>
         
         
         <!-- itemView 공구글 상세보기 영역 -->
         <div id="itemView" class="itemView">
         </div> 
         	

         
         
         <!-- 공구 리스트 영역 -->
         <div id="itemlist_area">

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

            <!-- itemlist 공구 추천글 리스트 -->
            <!-- <div id="itemlist_big_area">
            </div> -->  
            
            <!-- itemlist 공구 일반글 리스트 -->
            <div id="itemlist_small_area">
            </div>  
            
         </div>  <!-- itemlist_area  end -->
      



      </div>   <!-- main_content_area end -->





      

   </div>
   <!-- container end -->




     <!-- Swiper JS -->
  <script src="package/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
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

   <!-- Swiper JS -->
  <!-- <script text="text/javascript" src="package/swiper-bundle.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/js/swiper.min.js"></script>
 -->
 




 <script text="text/javascript" src="js/item.js"></script>
 <script text="text/javascript" src="js/seller.js"></script>
 <script text="text/javascript" src="js/buyer.js"></script>
 <script text="text/javascript" src="js/slide.js"></script>
 <script src="js/swiper.js"></script>   


   
</body>  


</html>


