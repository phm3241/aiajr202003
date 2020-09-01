

//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
var domain = "http://localhost:8080/order/";

// websocket을 지정한 URL로 연결
var sock = new SockJS(domain+"echo");

// websocket 서버에서 신호를 보내면 자동으로 실행된다.
sock.onmessage = sendAllAlarm;
// websocket과 연결을 끊고 싶을때 실행하는 메소드.
sock.onclose = onClose;

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
            var stateColor= '';
            
            switch(data[i].ostate){
               case 1:
                  state = '다음기회에...;'
                  btnClass = 'aside_button order_del';
                  btn='확인';
                  action = 'order_del';
                  stateColor = 'aside_mystate next';
                  break;
                  
               case 0:
                  state = '참여중';
                  btnClass = 'aside_button order_del';
                  btn='참여취소';
                  action = 'order_del';
                  stateColor = 'aside_mystate join';
                  break;
            }

            switch(data[i].pstate){      
               case 0:
                  state = '구매자';
                  btnClass = 'aside_button';
                  btn='QR확인';
                  action = 'qr';
                  stateColor = 'aside_mystate buyer';
                  break;
                  
               case 1:
                  state = '구매 완료';
                  btnClass = 'aside_button review';
                  btn='평점 등록';
                  action = 'toggle';
                  stateColor = 'aside_mystate review';
                  break;
            }
            html += '<div class="aside_mycard a'+data[i].iidx+'">';
            html += '   <div class="aside_mystatewrap">';
            html += '      <h4 class="'+stateColor+'">'+state+'</h4>';
            html += '      <div id="a'+data[i].iidx+'" onclick="cancleAlarm('+data[i].midx+','+data[i].iidx+')">test</div>';
            html += '   </div>';
            html += '      <input type="button" class="'+btnClass+'" onclick="'+action+'('+data[i].midx+','+data[i].iidx+')" value="'+btn+'"> <br>';
            html += '      <a href="'+data[i].iidx+'" class="aside_item_title" id="iidx">'+data[i].iidx+':'+data[i].title+'</a> <br>';
            if(data[i].pstate == 1){
               html += '<form onsubmit="return false;">';
               html += '   <div class="panel">';
               html += '      <input class="score_s" type="number">';
               html += '      <input class="insert_rvs" type="submit" value="평점 등록" onclick="review()">';
               html += '      <input type="submit" class="purchase_del" onclick="order_del('+data[i].midx+','+data[i].iidx+')" value="글 삭제">';
               html += '      <input type="hidden" class="midx" value="'+data[i].midx+'">';
               html += '      <input type="hidden" class="iidx" value="'+data[i].iidx+'">';
               html += '   </div>';
               html += '</form>';
            }
            html += '</div>';
         }
         
         $('#aside_mylist').html(html);
         
      } 
   })
}; // myorder end

/* WebSocket으로 보내기 */
function sendMessage(id, idx, status){
   
   var alarm = {
      midx : id,
      iidx : idx,
      tab : status
   };

   sock.send(JSON.stringify(alarm));

};

/* WebSocket으로 받기 */
function sendAllAlarm(evt){

   var data = evt.data; // 전달받은 데이터

   $.ajax({
      url: domain+'order/alarm/'+midx,
      type: 'GET',
      success: function(data){
         for(var i=0; i<data.length; i++){
            $("#a"+data[i]).addClass('alarm');
         }
      }
   })
};

function onClose(evt){

};

/* 전체 알림 표시 */
function readAllAlarm(midx){
   $.ajax({
      url: domain+'order/alarmall/'+midx,
      type: 'GET',
      success: function(data){
         if(data > 0){
            $("#alarm_b").text(data);
         }
      }
   })
}

/* 개별 알림 표시 */
function readAlarm(midx){
   console.log("readAlarm");
   $.ajax({
      url: domain+'order/alarm/'+midx,
      type: 'GET',
      success: function(data){
         for(var i=0; i<data.length; i++){
            $("#a"+data[i]).addClass('alarm');
         }
      }
   })
};

/* 알림 삭제 */
function cancleAlarm(midx, iidx){
   $.ajax({
      url: domain+'order/alarm/'+midx+'/'+iidx,
      type: 'POST',
      success: function(data){
         if(data == 1){
            $("#a"+iidx).removeClass('alarm');
         }
      }
   })
};

/* 20.08.21 박혜미 수정 : 내 판매글인지 확인 추가.*/
/* 참여신청: 잔여 대기인원 및 내 판매글인지 확인 */
function joinCheck(){

   $.ajax({
      url : domain+'order/'+midx+ $('#iidx').text()+'/'+$('#count_w').text(),
      type : 'GET',
      success : function(data){
         if(data == 1){
            join(7, $('#iidx').text());
            //join(midx, $('#iidx').text());
         } else if(data == 2){
            alert("본인의 판매글은 참여신청이 불가합니다.");
         } else{
            alert("정원이 마감되어 신청이 불가합니다.");
         }
      }
   })
};

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
};

/* aside - 오더 취소 */
function order_del(midx, iidx){
   var button = 0;
   var bClass = $(this).attr("class");
   
   if(bClass == "aside_button order_del"){
      button = 0;
   } else if(bClass == "aside_button purchase_del"){
      button = 1;
   }
   if(confirm("정말로 삭제하시겠습니까?")){
      $.ajax({
         url: domain+'order/'+midx+'/'+iidx +'/'+button,
         type: 'DELETE',
         success: function(data){
            if(data == 1){
               alert("참여신청이 정상적으로 취소되었습니다.");
            } else if(data==2){
               alert("글이 정상적으로 삭제되었습니다.");
            }
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
   
   if(confirm('평점등록은 한번으로 제한됩니다. 현재 평점으로 등록하시겠습니까?')){
      $.ajax({
         url : domain+'order',
         type : 'POST',
         data : reviewForm,
         processData: false,
         contentType: false,
         success : function(data){
            if(data == 1){
               $(".score_s").attr('disabled', 'true');   // 평점 등록 후 수정 불가
               $(".insert_rvs").attr('type', 'hidden');  // 평점 등록 후 등록버튼 사라짐
               alert("평점등록 완료!!");
            }
         },
         error: function(err){
            alert("평점등록 실패"+err);
         }
      })
   }
};

/* aside - 평점하기 버튼 클릭시 */
function toggle(midx, iidx){
   $(".panel").toggle();
};

function qr(){
   /* aside - QR보기 버튼 클릭시 */
   // 클릭한 아이템의 아이템번호
   var iidx = $(this).find('h4').text();
   
   // 
   $.ajax({
      url : domain+'order/' + iidx,
      type : 'post',
      success : function(data){
         alert("참여신청 완료!!");
      }
   })
};

$(document).ready(function(){
   var midx = 7;
   myorderList(midx);
   //readAllAlarm(midx);
   //readAlarm(midx);


   /* 5초마다 알람 체크 */
   setInterval("readAllAlarm("+midx+")", 2000);
   setInterval("readAlarm("+midx+")", 2000);

}); // ready end
