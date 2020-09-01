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


      <%@include file="/include/aside.jsp"%>
      <!-- <div id="nav">

         <br><br><br><br>
         <a href="#">home</a> <br><br>
         <a href="#">logout</a> <br><br> 
         <a href="#">icon</a>  <br><br>
         <a href="#">icon</a> 
      </div> -->

      <div id="main_content_area">
         <div class="header">
            <div class="title_area">
               <h1 class="main_title">W 1 F 1</h1>
               <h1 class="sub_title"> 같 이 ( 사 는 ) 가 치 </h1>
               <!-- 상단고정 navbar -->
               <div id="navbar">
                  <a class="active" href="javascript:void(0)">Home</a>
                  <a href="javascript:void(0)">News</a>
                  <a href="javascript:void(0)">Contact</a>
               </div>
            </div>
            
         </div>

         
         



         
         <div id="search_area">
         	검색하기<label for="gsearch">Search</label>
  				<input type="search" id="gsearch" name="gsearch">
         </div>

               <p><strong>Checkbox</strong></p>
					<div class="btn-group-toggle" data-toggle="buttons">
						<label class="btn btn-primary">
							<input type="checkbox"> Checkbox
						</label>
					</div>

         <button type="button" class="btn_search_category" onclick="">과일</button>
         <button type="button" class="btn_search_category" onclick="">육류</button>
         <button type="button" class="btn_search_category" onclick="">채소</button>
         <button type="button" class="btn_search_category" onclick="">생필품</button>
         <button type="button" class="btn_search_category" onclick="">음료</button>
         <button type="button" class="btn_sort sort_reg"  onclick="itemlist()">최신순정렬</button>
         <button type="button" class="btn_sort sort_rvs" onclick="itemlist_sort()">평점순정렬</button>
         
         <button type="button" class="btn_regItem" onclick="regItemForm()">공구글 등록</button>

         
         <div id="regItemForm_page">
            <form id="regItemForm" onsubmit="return false;" >
            	<label for="title">제목</label>    
	            <input type="text"  id="title" name=title required>
	            
	            <label for="price">가격</label> 
	            <input type="number"  id="price" name="price" required>원
	            
	            <label for="count_m">모집인원</label>       
	            <input type="number" id="count_m" name="count_m" required>명
	            
	            <label for="receive">물품수령일시</label>     
	            <input type="datetime-local"  id="receive" name="receive" required>
	               
	            <label for="addr">판매처</label>      
	            <input type="text" id="addr" name="addr">
	            
	            <label for="location">좌표</label>    
	            <input type="text" id="location" name="location">
	            
	            <label for="content">본문</label>      
	            <textarea id="content"  name="content" rows="10" cols="30">
				   내용을 작성해주세요.
				   </textarea>
		        
		         <label for="photo">첨부사진</label>
		  		   <input type="file" id="photo" name="photo">
	               
	             <label for="category">카테고리</label> 
	                  <select id="category" name="category">
	                     <option value="6" selected>전체</option>
	                     <option value="1">1.과일</option>
	                     <option value="2">2.육류</option>
	                     <option value="3">3.채소</option>
	                     <option value="4">4.생필품</option>
	                     <option value="5">5.음료</option>
                     </select>

               <input type="radio" name="state" class="state" value="0" checked>일반공구로 등록하기
               <input type="radio" name="state" class="state" value="1">추천공구로 등록하기
	                  
	            <label for="regItem_midx">작성자</label>
	            <input type="text" value="2" id="midx" name="midx" disabled>
	            <input type="submit" value="공구등록" onclick="regSubmit();">
            </form>

         </div>  <!-- regItemForm_page  end -->
         
         
         
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

<script text="text/javascript" src="js/order_copy.js"></script>
<script text="text/javascript" src="js/slide.js"></script>

