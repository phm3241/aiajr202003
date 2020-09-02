<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script> -->


<link rel="stylesheet" href="aside.css" type="text/css">
<link rel="stylesheet" href="buy.css" type="text/css">
<link rel="stylesheet" href="slide.css" type="text/css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

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

         <!-- header -->
         <%@include file="/include/header.jsp"%>

         


         
         <button type="button" class="btn_sort sort_reg"  onclick="itemlist()">최신순정렬</button>
         <button type="button" class="btn_sort sort_rvs" onclick="itemlist_sort()">평점순정렬</button>
         
         <button type="button" class="btn_regItem" onclick="regItemForm()">공구글 등록</button>
         
         
         <!-- 공구 등록 폼 -->
         <%@include file="/include/regItemForm.jsp"%>
         
 
         
         
         
         <!-- itemView 공구글 상세보기 -->
         <div id="itemView" class="itemView">

         </div> <!-- itemView   end -->
         	
            
         
         
         <div class="slideshow-container">

            <div class="mySlides fade">
              <div class="numbertext">1 / 3</div>
              <img src="사과.jpg" style="width:100%">
              <div class="text">Caption Text</div>
            </div>
            
            <div class="mySlides fade">
              <div class="numbertext">2 / 3</div>
              <img src="복숭아.jpg" style="width:100%">
              <div class="text">Caption Two</div>
            </div>
            
            <div class="mySlides fade">
              <div class="numbertext">3 / 3</div>
              <img src="바나나.jpg" style="width:100%">
              <div class="text">Caption Three</div>
            </div>
            
            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>
            
            </div>
            <br>
            
            <div style="text-align:center">
              <span class="dot" onclick="currentSlide(1)"></span> 
              <span class="dot" onclick="currentSlide(2)"></span> 
              <span class="dot" onclick="currentSlide(3)"></span> 
            </div>



                  
         
         
         
         <!-- itemlist 공구 추천글 리스트 -->
         <div id="itemlist_area">
            <div id="itemlist_big_area">
               
               
            </div>  <!-- itemlist_big_area   end-->
            
            
            
            <!-- itemlist 공구 일반글 리스트 -->
            <div id="itemlist_small_area">
            
    
            </div>  <!-- itemlist_small_area   end -->
            
            
         </div>  <!-- itemlist_area  end -->
      
      </div>   <!-- main_content_area end -->



      

   </div>
   <!-- container end -->
</body>
</html>

<script text="text/javascript" src="js/item.js"></script>
<script text="text/javascript" src="js/seller.js"></script>
<script text="text/javascript" src="js/buyer.js"></script>
<script text="text/javascript" src="js/slide.js"></script>

