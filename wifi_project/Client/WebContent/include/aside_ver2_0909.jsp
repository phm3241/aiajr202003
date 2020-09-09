<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!-- aside 공구현황 -->
<div id="aside_area">
   <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
   <div class="aside_title_area">
      <div class="aside_myinfo">
         <h4>홍*동</h4>
         <h4>구매자 평점 ★★★★☆ (13점/3명)</h4>
         <h4>판매자 평점 ★★★★☆ (13점/3명)</h4>
      </div>
   </div> 


   <!-- 탭버튼 : 구매현황. 판매현황 -->
   <div class="aside_tabs">
      <div class="aside_tab"><button type="button" class="btn_myOderlist">구 매 현 황<h4 id="alarm_b"></h4></button></div>
      <div class="aside_tab"><button type="button" class="btn_myItemlist">판 매 현 황<h4 id="alarm_s"></h4></button></div>
   </div>
    
   
    
   <!-- 탭버튼 내용 영역-->
   <div id="aside_mylist" class="aside_mylist">
       

      <!-- 내 구매현황 -->
      <div id="aside_myOrderlist" class="aside_myOrderlist">

      </div>  


      <!-- 내 판매현황 -->
      <div id="aside_myItemlist" class="aside_myItemlist">

      </div>  



   </div> <!-- aside_mylist end -->


</div>
<!-- aside_area end -->