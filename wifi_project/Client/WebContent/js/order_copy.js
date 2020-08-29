//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";


 $(document).ready(function(){
	itemlist();

 });


/* 공구 리스트 : 최신순 정렬(기본값) */ 
function itemlist(){

	$('.sort_rvs').css('background-color', 'aquamarine');
	$('.sort_reg').css('background-color', 'teal');
	
	$.ajax({
		url: domain+'/items',
		type: 'GET',
		success: function(data){
			
			var html = '';
			//var path='C:\Users\BIT02-20\Documents\GitHub\aiajr202003\wifi_project\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Order\img';
				
			for(var i=0; i<data.length; i++){
				// 추천 공구글
				// if(data[i].state == 1) {
				// 	html += '<button class="item_card_big">';
				// 	html += '	<input type="hidden" value="'+data[i].iidx+'">';
				// 	html += '	<img class="item_img_big" src="'+data[i].photo+'">';
				// 	html += '	<div class="item_info">';
				// 	html += '		<h3 class="item_title">'+data[i].title+'</h3>';
				// 	html += '			<span class="sell er_name">'+data[i].midx+'</span>';
				// 	//html += '			<span class="seller_rating">'+data[i].score_s+'<span></span></span><br>';
				// 	html += '			<span class="item_price">'+data[i].price+'</span> ';
				// 	html += '			<span class="item_limitDate">'+data[i].receive+'</span>';
				// 	html += '	</div>';
				// 	html += '</button>';


				// 일반 공구글
				//} else{

					html += '<button class="item_card" onclick="itemView('+data[i].iidx+')">';
					//html += '	<input type="hidden" value="'+data[i].iidx+'">';
					html += '	<img class="item_img" src="/order/upload/'+data[i].photo+'">';
					html += '	<div class="item_info">';
					html += '		<h3 class="item_title">'+data[i].title+'</h3>';
					html += '			<span class="seller_name">판매자 : '+data[i].midx+'</span><br>';
					html += '			<span class="seller_rating">판매자 평균평점'+data[i].rvs_avg+'<span></span></span><br>';
					html += '			<span class="seller_rating">판매자 총평점개수'+data[i].rvs_totalRow+'<span></span></span><br>';
					html += '			<span class="item_price">가격 : '+data[i].price+'</span> ';
					html += '			<span class="item_limitDate">수령일 : '+data[i].receive+'</span>';
					html += '	</div>';
					html += '</button>';
				//}

			} // for end

				// 추천공구글일 때 표시되는 위치
				// if(data[i].state == 1){
				// 	$('#itemlist_big_area').html(html);
				// }
				
				// 일반공구글일 때 표시되는 위치
				$('#itemlist_big_area').html(html);
		}


	});


}; // itemlist() end




/* 공구 리스트 : 평점순 정렬 */ 
function itemlist_sort(){

	$('.sort_rvs').css('background-color', 'teal');
	$('.sort_reg').css('background-color', 'aquamarine');

	$.ajax({
		url: domain+'/items/sort',
		type: 'GET',
		success: function(data){
			
			var html = '';
			//var path='C:\Users\BIT02-20\Documents\GitHub\aiajr202003\wifi_project\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Order\img';
				
			for(var i=0; i<data.length; i++){
				// 추천 공구글
				// if(data[i].state == 1) {
				// 	html += '<button class="item_card_big">';
				// 	html += '	<input type="hidden" value="'+data[i].iidx+'">';
				// 	html += '	<img class="item_img_big" src="/order/upload/'+data[i].photo+'">';
				// 	html += '	<div class="item_info">';
				// 	html += '		<h3 class="item_title">'+data[i].title+'</h3>';
				// 	html += '			<span class="sell er_name">'+data[i].midx+'</span>';
				// 	//html += '			<span class="seller_rating">'+data[i].score_s+'<span></span></span><br>';
				// 	html += '			<span class="item_price">'+data[i].price+'</span> ';
				// 	html += '			<span class="item_limitDate">'+data[i].receive+'</span>';
				// 	html += '	</div>';
				// 	html += '</button>';


				// 일반 공구글
				//} else{

					html += '<button class="item_card" onclick="itemView('+data[i].iidx+')">';
					//html += '	<input type="hidden" value="'+data[i].iidx+'">';
					html += '	<img class="item_img" src="/order/upload/'+data[i].photo+'">';
					html += '	<div class="item_info">';
					html += '		<h3 class="item_title">'+data[i].title+'</h3>';
					html += '			<span class="seller_name">판매자 : '+data[i].midx+'</span><br>';
					html += '			<span class="seller_rating">판매자 평균평점'+data[i].rvs_avg+'<span></span></span><br>';
					html += '			<span class="seller_rating">판매자 총평점개수'+data[i].rvs_totalRow+'<span></span></span><br>';
					html += '			<span class="item_price">가격 : '+data[i].price+'</span> ';
					html += '			<span class="item_limitDate">수령일 : '+data[i].receive+'</span>';
					html += '	</div>';
					html += '</button>';
				//}

			} // for end

				// 추천공구글일 때 표시되는 위치
				// if(data[i].state == 1){
				// 	$('#itemlist_big_area').html(html);
				// }
				
				// 일반공구글일 때 표시되는 위치
				$('#itemlist_big_area').html(html);
		}


	});


}; // itemlist_sort() end





/* 공구등록 폼  */
function regItemForm(){
   //$("#regItemForm_page").css("display","block");
   $("#regItemForm").toggle();
   
};


/* 공구등록 */
function regSubmit(){

		var regFormData = new FormData();

		regFormData.append('title', $('#title').val());
		regFormData.append('price', $('#price').val());
		regFormData.append('count_m', $('#count_m').val());
		regFormData.append('count_w', $('#count_m').val()*2);
		regFormData.append('receive', moment($('#receive').val()).format('YYYY-MM-DD HH:mm:ss'));
		regFormData.append('addr', $('#addr').val());
		regFormData.append('location', $('#location').val());
		regFormData.append('content', $('#content').val());

		// 파일 첨부
		if($('#photo')[0].files[0] != null){
		regFormData.append('photo', $('#photo')[0].files[0]);
		}

		regFormData.append('state', $('.state').val());
		regFormData.append('viewCount', 0);
		regFormData.append('category', $('#category').val());
		regFormData.append('midx', $('#midx').val());	

		alert("regFormData.title"+regFormData.title); 

		$.ajax({
			url : domain+'/items',
			type : 'POST',
			processData: false, // File 전송시 필수
			contentType: false, // multipart/form-data
			data : regFormData,
			success : function(iidx){
				alert("공구등록완료");
				alert("등록한 공구 iidx : " + iidx); 
				//itemView(data.iidx);
				//itemList();
				//document.getElementById('regItemForm').reset();

				// var html = '';
					
				// html += '<div class="itemView_table">';
				// html += '	<table border="1">';
				// html += '		<tr><td>제목</td><td>'+$('#title').val()+'</td></tr>';
				// html += '		<tr><td>작성자</td><td>'+$('#midx').val()+'</td></tr>';
				// html += '		<tr><td>첨부사진</td><td>'+$('#photo').val()+'</td></tr>';
				// html += '		<tr><td>카테고리</td><td>'+$('#category').val()+'</td></tr>';
				// html += '		<tr><td>가격</td><td>'+$('#price').val()+'</td></tr>';
				// html += '		<tr><td>모집정원</td><td>'+$('#count_m').val()+'</td></tr>';
				// html += '		<tr><td>대기정원</td><td>'+$('#count_m').val()*2+'</td></tr>';
				// html += '		<tr><td>물품수령일시</td><td>'+moment($('#receive').val()).format('YYYY-MM-DD HH:mm:ss')+'</td></tr>';
				// html += '		<tr><td>판매처</td><td>'+$('#addr').val()+'</td></tr>';
				// html += '		<tr><td>좌표</td><td>'+$('#location').val()+'</td></tr>';
				// html += '		<tr><td>본문</td><td>'+$('#content').val()+'</td></tr>';
				// html += '		<tr><td clospan="2"><input type="button" class="btn_join" value="참여신청" onclick="joincCheck()">';
				// html += '			<input type="button" class="btn_itmelist" value="목록으로" onclick="itemlist()"></td></tr>'; 
				// html += '	</table>';
				// html += '</div>';
				

				itemView(iidx);
				
				// $('#itemView').html(html);
				itemlist();

			},

			Error: function(error){
				alert('공구등록 실패');
				itemlist();
			}
			
		});
		
		
	};



	/* 공구글 상세보기 */
	function itemView(iidx) {
		$.ajax({
			url: domain+'/items/'+iidx,
			type: 'get',
			success: function(data){
				
				var html = '';
					
				html += '<div class="itemView_table">';
				html += '	<table border="1">';
				html += '		<tr><td>iidx</td><td>'+data.iidx+'</td></tr>';
				html += '		<tr><td>제목</td><td>'+data.title+'</td></tr>';
				html += '		<tr><td>작성자</td><td>'+data.midx+'</td></tr>';
				html += '		<tr><td>작성자 평균평점</td><td>'+data.rvs_avg+'</td></tr>';
				html += '		<tr><td>작성자 총평점수</td><td>'+data.rvs_totalRow+'</td></tr>';
				html += '		<tr><td>첨부사진</td><td><img class="item_img" src="/order/upload/'+data.photo+'"></td></tr>';
				html += '		<tr><td>카테고리</td><td>'+data.category+'</td></tr>';
				html += '		<tr><td>가격</td><td>'+data.price+'</td></tr>';
				html += '		<tr><td>모집정원</td><td>'+data.count_m+'</td></tr>';
				html += '		<tr><td>대기정원</td><td>'+data.count_m*2+'</td></tr>';
				html += '		<tr><td>물품수령일시</td><td>'+data.receive+'</td></tr>';
				html += '		<tr><td>판매처</td><td>'+data.addr+'</td></tr>';
				html += '		<tr><td>좌표</td><td>'+data.location+'</td></tr>';
				html += '		<tr><td>본문</td><td>'+data.content+'</td></tr>';
				html += '		<tr><td clospan="2">';
				html += '			<input type="button" class="btn_join" value="참여신청" onclick="joincCheck('+data.iidx+')">';
				html += '			<input type="button" class="btn_itmelist" value="목록으로" onclick="itemlist()">'; 
				html += '			<input type="button" class="btn_itmelist" value="글수정" onclick="editItem('+data.iidx+')">'; 
				html += '			<input type="button" class="btn_itmelist" value="글삭제" onclick="delItem('+data.iidx+')">'; 
				html += '		</td></tr>'; 
				html += '	</table>';
				html += '</div">';
				
				$('#itemView').html(html);
				
			}


		});

	} //itemView() end

	
	/* 공구 삭제 */
	function delItem(iidx){

		if(confirm("정말 삭제하시겠습니까?")){
			$.ajax({
				url: domain+'/items/'+iidx,
				type: 'DELETE',
				success: function(data){
					alert('공구삭제 성공');
					alert(data);
					itemlist();
				}
	
			});
		}
		
	}




	/* 내 판매글 참여자 리스트보기  */
	/* iidx 받아서 ㅡ> 구매자 목록(구매자 이름, 평균평점, 총평점개수 + ostate, pstate선택) 화면출력 */
	function myitem(midx) {

		$.ajax({
		   url: domain+'/myitem/'+midx,
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
				 

				 if(data[i].ostated)
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
				 html += '	<div class="aside_myitem">';
				 html += '  	<div class="aside_mystatewrap">';
				 html += '      	<span class="btn_regItem'+stateColor+'">'+state+'</span>';
				 html += '      	<span id="a'+data[i].iidx+'" onclick="cancleAlarm('+data[i].midx+','+data[i].iidx+')">test</span>';
				 html += '   	</div>';
				 html += '      <a href="'+data[i].iidx+'" class="aside_item_title">'+data[i].iidx+':'+data[i].title+'</a> <br>';
				 html += '      <button type="button" class="btn_mybuyer_view" onclick="mybuyer('+data[i].iidx+')"> ▼ </button>';

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
			  
			  $('#aside_mylist_area').html(html);
			  
		   } 
		})
	 }; // myitem end



	/* 내 판매글 참여자 리스트보기  */
	/* iidx 받아서 ㅡ> 구매자 목록(구매자 이름, 평균평점, 총평점개수 + ostate, pstate선택) 화면출력 */
	 function mybuyer(iidx) {

		var iidx = 5;

		$.ajax({
		   url: domain+'/items/myitem/buyer/'+iidx,
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
			   

			   /* if(data[i].ostated)
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
			   } */

			   html += '<div class="aside_mybuyer a'+data[i].iidx+'">';
			   html += '	<span class="buyer_name a'+data[i].buyer+'">'+data[i].name+'</span>';
			   html += '  	<span class="rvb_avg">별'+data[i].rvb_avg+'</span><span class="rvb_total">/'+data[i].rvb_totalRow+'</span>';
			   html += '    <button type="button" class="btn_" onclick=""> 상태 </button>';
			   html += '</div>';
			}
			
			$('#aside_mybuyerlist').html(html);
			$("#aside_mybuyerlist").toggle();

		   }
		});
	 };  // mybuyer end