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
         
         <div id="search_area">
         	검색하기<label for="gsearch">Search</label>
  				<input type="search" id="gsearch" name="gsearch">
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
         	<!-- <div class="itemView_table">
	         	<table border="1">
	         		<tr>
	         			<td>제목</td>
	         			<td>ㅁㅁㅁ</td>
	         		</tr>
	         		<tr>
	         			<td>작성자</td>
	         			<td>ㅁㅁㅁ</td>
	         		</tr>
	         		<tr>
	         			<td>첨부사진</td>
	         			<td><img>ㅁㅁㅁ</img></td>
	         		</tr>
	         		<tr>
	         			<td>카테고리</td>
	         			<td><img>ㅁㅁㅁ</img></td>
	         		</tr>
	         		<tr>
	         			<td>가격</td>
	         			<td>ㅁㅁㅁ</td>
	         		</tr>
	         		<tr>
	         			<td>모집정원</td>
	         			<td>ㅁㅁㅁ</td>
	         		</tr>
	         		<tr>
	         			<td>대기정원</td>
	         			<td>ㅁㅁㅁ</td>
	         		</tr>
	         		<tr>
	         			<td>물품수령일시</td>
	         			<td>ㅁㅁ</td>
	         		</tr>
	         		<tr>
	         			<td>판매처</td>
	         			<td>ㅁㅁ</td>
	         		</tr>
	         		<tr>
	         			<td>좌표</td>
	         			<td>ㅁㅁㅁ</td>
	         		</tr>
	         		
	         		<tr>
	         			<td>본문</td>
	         			<td>ㅁㅁㅁ</td>
                  </tr>
                  <tr>
	         			<td clospan="2">
                        <input type="button" class="btn_join" value="참여신청" onclick="joincCheck()">
                        <input type="button" class="btn_itmelist" value="목록으로" onclick="itemlist()"> 
                     </td>
	         		</tr>
	
	         	</table>
         	</div> -->
         </div> <!-- itemView   end -->
         	
            
	        
                  
         
         
         
         
         <div id="itemlist_area">
            <div id="itemlist_big_area">
               <!-- <form action="joinCheck" onsubmit="return false">
               
	               <div class="item_card_big">
	                  <img class="item_img_big" src="복숭아.jpg">
	                  <div class="item_info">
	                     <div class="item_info_div">
	                        <h3 class="item_title">
	                           <a href="#">오늘! 사과 3개씩 나눠사실 분</a>
	                        </h3>
	                        <span class="seller_name">홍길동</span> <span class="seller_rating">★★★★<span>☆</span></span><br>
	                        <span class="item_price">5000원</span> <span
	                           class="item_limitDate">당일마감</span>
	                     </div>
	                     <div class="item_button_div">
	                        <input type="submit" class="item_Waiting_button" value="참여신청" onclick="joinCheck();">
	                     </div>
	                  </div>
	               </div>
               </form>
               
               
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
               </div> -->
               
            </div>  <!-- itemlist_big_area   end-->
            
            
            
            
            <div id="itemlist_small_area">
            
               <!-- <div class="item_card">
                  <img class="photo_main" src="수박.jpg">
                  <div class="item_info">
                     <h3 class="title">
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
               </div> -->
           
            </div>  <!-- itemlist_small_area   end -->
            
            
            
         </div>  <!-- itemlist_area -->
      
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

<script text="text/javascript" src="js/order_copy.js"></script>
