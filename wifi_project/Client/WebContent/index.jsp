<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">

<link rel="stylesheet" href="css/search.css" type="text/css">
<link rel="stylesheet" href="css/item.css" type="text/css">

<link rel="stylesheet" href="css/view.css" type="text/css">
<link rel="stylesheet" href="css/aside.css" type="text/css">
<link rel="stylesheet" href="css/swiper.css" type="text/css">
<link rel="stylesheet" href="css/swiper.min.css" type="text/css">
<link rel="stylesheet" href="package/swiper-bundle.min.css">  

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"> <!-- 평점등록 시 별모양 나타내는  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>  <!-- 평점등록 시 별 마우스오버 계속 반응  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.27.0/moment.min.js"></script> <!-- 날짜포멧 -->
<script src="https://cdn.jsdelivr.net/npm/lodash@4.17.11/lodash.min.js"></script>   <!-- 데이터를 정렬/필터/색인할 수 있게 도와주는 오픈소스 Javascript Utility Library -->



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
          <button type="button" class="btn_search_category" onclick="filterSelection('category3')">생필품/기타</button>
          <button type="button" class="btn_search_category" onclick="filterSelection('category2')">육류/해산물</button>
          <button type="button" class="btn_search_category" onclick="filterSelection('category1')">과일/채소</button>
          <button type="button" class="btn_search_category active" onclick="filterSelection('category0')">전체</button>
        </div>
      </div>
    </div>
    
    
    
    
    

    <!-- 공구 등록 폼 -->
    <%@include file="include/regItemForm.jsp"%>
    



    <!-- itemView 공구글 상세보기 영역 -->
    <div id="itemView_area" class="itemView_area"></div> 





    <!-- 공구 리스트 영역 -->
    <div id="itemlist_area">

      <!-- Recommended item area-->
      <div class="w3-container" id="Recommended" style="margin-top:65px;" >
        <h2 class="w3-xlarge text-purple"><b>Recommended item</b></h2>
        <hr style="width:50px;border:5px solid purple;"  class="w3-round">
      
        <!-- 추천공구 리스트  영역  : 슬라이드  -->
        <!-- Swiper -->
        <section class="ag-slide-block">
          <div class="swiper-container"></div>
        </section>

      </div> <!-- Recommende end -->



      <!-- Item area-->
      <div class="w3-container" id="item" style="margin-top:75px;" >
        <h2 class="w3-xlarge text-purple"><b>item</b></h2>
          <button type="button" class="btn_sort sort_reg"  onclick="allItemlist()">Latest Sort</button>
          <button type="button" class="btn_sort sort_rvs" onclick="allItemlist_sortRvs()">Rating Sort</button>
          <button type="button" class="btn_regItem" onclick="regItemForm()">item +</button>
        <hr style="width:50px; border:5px solid purple; " class="w3-round">
        
        <!-- itemlist 공구 일반글 리스트 -->
        <div id="itemlist_small_area"></div> 
      </div>  


    </div> <!-- itemlist_area end -->



  </div>  <!-- w3-main end -->




  <!-- W3.CSS Container -->
  <div class="w3-light-grey w3-container w3-padding-32" style="margin-top:75px;padding-right:58px">
    <p class="w3-right">Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-opacity">w3.css</a></p>
  </div>





  

  

</body>
  <script src="js/swiper.min.js"></script>
  <script src="js/swiper.js"></script> 
  <script text="text/javascript" src="js/item.js"></script>
  <script text="text/javascript" src="js/seller.js"></script>
  <script text="text/javascript" src="js/buyer.js"></script>
  <!-- <script text="text/javascript" src="js/slide.js"></script> -->
  <script text="text/javascript" src="js/search.js"></script>
    
    


</html>
