<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>
<link rel="stylesheet" href="buy.css" type="text/css">
<style>
   /* .panel{
      display: none;
   } */
</style>
<title>Insert title here</title>
</head>      
<body>
   <div id="container">

      <div id="nav">
         <br><br><br><br>
         <a href="#">home</a> <br><br>
         <a href="#">logout</a> <br><br> 
         <a href="#">icon</a>  <br><br>
         <a href="#">icon</a> 
      </div>

      <div id="main_content_area">
         <div class="title_area">
            <h1 class="main_title">W 1 F 1</h1>
            <h1 class="sub_title"> 같 이 ( 사 는 ) 가 치 </h1>
         </div>
         <div id="itemlist_area">
            <div id="itemlist_big_area">
               <div class="item_card_big">
                  <img class="item_img_big" src="복숭아.jpg">
                  
                  <form action="joinCheck" onsubmit="return false">
                  <div class="item_info">
                     <div class="item_info_div">
                        <h3 class="item_title">
                           <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
                        </h3>
                        <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
                        <span class="item_price">5000원</span> <span
                           class="item_limitDate">당일마감</span>
                        <h4 id=count_w>10</h4>
                        <h4 id=iidx>12</h4>
                     </div>
                     <div class="item_button_div">
                        <!-- <input type="button" class="item_Waiting_button" value="참여신청"> -->
                        <input type="submit" class="item_Waiting_button" value="참여신청" onclick="joinCheck();">
                     </div>
                  </div>
                  </form>
                  
               </div>
               <div class="item_card_big">
                  <img class="item_img_big" src="사과.jpg">
                  <div class="item_info">
                     <div class="item_info_div">
                        <h3 class="item_title">
                           <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
                        </h3>
                        <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
                        <span class="item_price">5000원</span> <span
                           class="item_limitDate">당일마감</span>
                        <h4 id=item_idx>150</h4>
                     </div>
                     <div class="item_button_div">
                        <input type="button" class="item_Waiting_button" value="참여신청">
                     </div>
                  </div>
               </div>
               <div class="item_card_big">
                  <img class="item_img_big" src="수박.jpg">
                  <div class="item_info">
                     <div class="item_info_div">
                        <h3 class="item_title">
                           <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
                        </h3>
                        <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
                        <span class="item_price">5000원</span> <span
                           class="item_limitDate">당일마감</span>
                        <h4 id=item_idx>150</h4>
                     </div>
                     <div class="item_button_div">
                        <input type="button" class="item_Waiting_button" value="참여신청">
                     </div>
                  </div>
               </div>
            </div>
            <div id="itemlist_small_area">
               <div class="item_card">
                  <img class="item_img" src="수박.jpg">
                  <div class="item_info">
                     <h3 class="item_title">
                        <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
                     </h3>
                     <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
                     <span class="item_price">5000원</span> <span
                        class="item_limitDate">당일마감</span>
                  </div>
               </div>
               <div class="item_card">
                  <img class="item_img" src="사과.jpg">
                  <div class="item_info">
                     <h3 class="item_title">
                        <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
                     </h3>
                     <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
                     <span class="item_price">5000원</span> <span
                        class="item_limitDate">당일마감</span>
                  </div>
               </div>
               <div class="item_card">
                  <img class="item_img" src="멜론.jpg">
                  <div class="item_info">
                     <h3 class="item_title">
                        <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
                     </h3>
                     <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
                     <span class="item_price">5000원</span> <span
                        class="item_limitDate">당일마감</span>
                  </div>
               </div>
               <div class="item_card">
                  <img class="item_img" src="수박.jpg">
                  <div class="item_info">
                     <h3 class="item_title">
                        <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
                     </h3>
                     <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
                     <span class="item_price">5000원</span> <span
                        class="item_limitDate">당일마감</span>
                  </div>
               </div>
               <div class="item_card">
                  <img class="item_img" src="사과.jpg">
                  <div class="item_info">
                     <h3 class="item_title">
                        <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
                     </h3>
                     <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
                     <span class="item_price">5000원</span> <span
                        class="item_limitDate">당일마감</span>
                  </div>
               </div>
               <div class="item_card">
                  <img class="item_img" src="멜론.jpg">
                  <div class="item_info">
                     <h3 class="item_title">
                        <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
                     </h3>
                     <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
                     <span class="item_price">5000원</span> <span
                        class="item_limitDate">당일마감</span>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- main_content_area end -->


      <div class="aside_area">
         <div class="aside_title_area">
            <div class="aside_myinfo">
               <h4>홍*동</h4>
               <h4>구매자 평점 ★★★★☆ (13점/3명)</h4>
               <h4>판매자 평점 ★★★★☆ (13점/3명)</h4>
            </div>
            <div class="aside_tabs">
            	<div class="aside_tab"><input type="button" value="구 매 현 황"><h4 id="alarm_b"></h4></div>
            	<div class="aside_tab"><input type="button" value="판 매 현 황"><div id="alarm_s"></div></div>
            </div>  
         </div>
         
         <div id="aside_mylist" class="aside_mylist">
            
         </div>
      </div>
      <!-- aside_area end -->

   </div>
   <!-- container end -->
</body>
</html>

<script text="text/javascript" src="js/order.js"></script>

