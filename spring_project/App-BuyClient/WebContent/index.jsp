<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="http://code.jquery.com/jquery-1.12.4.js"></script>
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
                        <h4 id=iidx>7</h4>
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
	            <input type="button" class="aside_tab" value="구 매 현 황">  
    	        <input type="button" class="aside_tab" value="판 매 현 황">  
            </div>  
         </div>
         
         <div id="aside_mylist">
            
         </div>
      </div>
      <!-- aside_area end -->

   </div>
   <!-- container end -->
</body>
</html>

<script>
	var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
	
   $(document).ready(function(){
      var midx = 7;
      myorderList(midx);
      
      /* aside - 평점하기 버튼 클릭시 */
      $(".aside_button review").click(function(){
         $(this).next(".panel").slideToggle("slow");
      });
      
      /* aside - QR보기 버튼 클릭시 */
      $('.QR').click(function(){
           
         // 클릭한 아이템의 아이템번호
         var iidx = $(this).find('h4').text();
         
         // 
         $.ajax({
            url : domain+'order/' + iidx,
            type : 'post',
            success : function(data){
               alert("참여신청 완료!!");
               alert(data);
            }
         });
         
         
      }); //참여취소 end
      
   }); // ready end
   
   function myorderList(midx) {
      $.ajax({
         url: domain+'order/'+midx,
         type: 'get',
         success: function(data){
            
            var html = '';
            for(var i=0; i<data.length; i++){
               var btn='';
               var state= '';
               var btnClass = '';
               var action = '';
               var btn = '';
               
               switch(data[i].state){
                  case 0:
                     state = '다음기회에...;'
                     btnClass = 'aside_button order_del';
                     action = 'order_del';
                     btn='확인';
                     break;
                     
                  case 1:
                     state = '참여중';
                     btnClass = 'aside_button waiting_cancle';
                     btn='참여취소';
                     action = 'order_del';
                     break;
                     
                  case 2:
                     state = '구매자';
                     btnClass = 'aside_button';
                     btn='QR확인';
                     action = 'qr';
                     break;
                     
                  case 3:
                     state = '구매 완료';
                     btnClass = 'aside_button review';
                     btn='평점 등록';
                     action = '';
                     break;
                     
                  case -2:
                     $('.aside_mycard').css('display','none');
                     break;
               
               }
               html += '<div class="aside_mycard">';
               html += '   <h4 class="aside_mystate waiting">'+state+'</h4>';
               html += '      <a href="'+data[i].iidx+'" class="aside_item_title" id="iidx">'+data[i].title+'</a>';
               html += '      <input type="button" class="'+btnClass+'" onclick="'+action+'('+data[i].midx+','+data[i].iidx+')" value="'+btn+'">';
               if(data[i].state == 3){
                  html += '<form onsubmit="return false;">';
                  html += '   <div class="panel">';
                  html += '      <input class="score_s" type="number">';
                  html += '      <input type="submit" value="평점 등록" onclick="review()">';
                  html += '      <input type="submit" class="order_del" onclick="order_del('+data[i].midx+','+data[i].iidx+')" value="글 삭제">';
                  html += '      <input type="hidden" class="midx" value="'+data[i].midx+'">';
                  html += '      <input type="hidden" class="iidx" value="'+data[i].iidx+'">';
                  html += '   </div>';
                  html += '</form>';
               }
               html += '</div>';
            }
            
            $('#aside_mylist').html(html);
            
         } 
      });
   } // myorder end
   
   /* 참여신청: 잔여 대기인원 확인 */
   function joinCheck(){

      $.ajax({
         url : domain+'order/' + $('#iidx').text()+'/'+$('#count_w').text(),
         type : 'GET',
         success : function(data){
            if(data == 1){
               join(7, $('#iidx').text());
               //join(midx, $('#iidx').text());
            }
            else{
               alert("정원이 마감되어 신청이 불가합니다.");
            }
         }
      });
   }
   
   /* 참여신청: 대기신청 */
   function join(midx, iidx){
      
      $.ajax({
         url : domain+'order/'+ midx+'/'+iidx,
         type : 'POST',
         success : function(data){
            if(data == 1){
               alert("참여신청 완료!!");
               myorderList(3);
               //myorderList(midx);
            } else{
               alert("신청내역이 이미 존재합니다.");
            }
         },
         error: function(err){
            alert("참여신청 실패"+err);
         }
      })
   }
   
   /* aside - 오더 취소 */
   function order_del(midx, iidx){
      var button = 0;
      var bClass = $(this).attr("class");
      
      if(bClass == "aside_button order_del"){
         button = 1;
      } else if(bClass == "aside_button waiting_cancle"){
         button = 0;
      }
      if(confirm("정말로 삭제하시겠습니까?")){
         $.ajax({
            url: domain+'order/'+midx+'/'+iidx +'/'+button,
            type: 'DELETE',
            success: function(data){
               myorderList(7);
               //myorderList(midx);
            }
         })
      }
   };
   
   function review(){
      
      var reviewForm = new FormData();
      reviewForm.append('score_s', $('.score_s').val());
      reviewForm.append('midx', $('.midx').val());
      reviewForm.append('iidx', $('.iidx').val());
      
      console.log("review function");
      
      $.ajax({
         url : domain+'order',
         type : 'POST',
         data : reviewForm,
         processData: false,
         contentType: false,
         success : function(data){
            if(data == 1){
               alert("평점등록 완료!!");
               myorderList(3);
               //myorderList(midx);
            }
         },
         error: function(err){
            alert("평점등록 실패"+err);
         }
      })
   };

</script>








