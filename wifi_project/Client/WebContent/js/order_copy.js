//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";

 var midx = 1;

 $(document).ready(function(){
	itemlist();
	myitem(midx);

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
			var html2 = '';
				
			for(var i=0; i<data.length; i++){
				
				var state = '';

				// 모집중
				//if(data[i].pstate==-1){
				//	state = '';

				
				// 모집완료
				//} else if(data[i].pstate != -1){
				//	state='';
				//}


				switch(data[i].istate){

					// 추천 공구리스트
					case 1:

						html += '<button class="item_card_big" onclick="itemView('+data[i].iidx+')">';
						//html += '	<input type="hidden" value="'+data[i].iidx+'">';
						html += '	<img class="item_img" src="/order/upload/'+data[i].photo+'">';
						html += '	<div class="item_info">';
						html += '		<div>istate : '+data[i].istate+'</div>';
						html += '		<div>pstate : '+data[i].pstate+'</div>';
						html += '		<h3 class="item_title">'+data[i].iidx+': '+data[i].title+'</h3>';
						html += '			<span class="seller_name">판매자 : '+data[i].midx+'</span><br>';
						html += '			<span class="seller_rating">판매자 평균평점'+data[i].rvs_avg+'<span></span></span><br>';
						html += '			<span class="seller_rating">판매자 총평점개수'+data[i].rvs_totalRow+'<span></span></span><br>';
						html += '			<span class="seller_rating">조회수'+data[i].view_count+'<span></span></span><br>';
						html += '			<span class="item_price">가격 : '+data[i].price+'</span> ';
						html += '			<span class="item_limitDate">수령일 : '+data[i].receive+'</span>';
						html += '	</div>';
						html += '</button>';

					break;
						
						
						
						
					// 일반 공구리스트
					case 0:

						html2 += '<button class="item_card" onclick="itemView('+data[i].iidx+')">';
						//html += '	<input type="hidden" value="'+data[i].iidx+'">';
						html2 += '	<img class="item_img" src="/order/upload/'+data[i].photo+'">';
						html2 += '	<div class="item_info">';
						html2 += '		<div>istate : '+data[i].istate+'</div>';
						html2 += '		<div>pstate : '+data[i].pstate+'</div>';
						html2 += '		<h3 class="item_title">'+data[i].iidx+': '+data[i].title+'</h3>';
						html2 += '			<span class="seller_name">판매자 : '+data[i].midx+'</span><br>';
						html2 += '			<span class="seller_rating">판매자 평균평점'+data[i].rvs_avg+'<span></span></span><br>';
						html2 += '			<span class="seller_rating">판매자 총평점개수'+data[i].rvs_totalRow+'<span></span></span><br>';
						html2 += '			<span class="seller_rating">조회수'+data[i].view_count+'<span></span></span><br>';
						html2 += '			<span class="item_price">가격 : '+data[i].price+'</span> ';
						html2 += '			<span class="item_limitDate">수령일 : '+data[i].receive+'</span>';
						html2 += '	</div>';
						html2 += '</button>';


					break;


				} // switch end
				

			} // for end

				// 추천공구글일 때 표시되는 위치
				$('#itemlist_big_area').html(html);

				// 일반공구글일 때 표시되는 위치
				$('#itemlist_small_area').html(html2);


		} // success end

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

	//alert("regFormData.title"+regFormData.title); 

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
		type: 'GET',
		success: function(data){
			
			var html = '';
				
			html += '<div class="itemView_table">';
			html += '	<table border="1">';
			html += '		<tr><td>iidx</td><td>'+data.iidx+'</td></tr>';
			html += '		<tr><td>제목</td><td>'+data.title+'</td></tr>';
			html += '		<tr><td>작성자</td><td>'+data.midx+'</td></tr>';
			html += '		<tr><td>작성자 평균평점</td><td>'+data.rvs_avg+'</td></tr>';
			html += '		<tr><td>작성자 총평점수</td><td>'+data.rvs_totalRow+'</td></tr>';
			html += '		<tr><td>조회수</td><td>'+data.view_count+'</td></tr>';
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
				myitem(midx);
				
			}

		});
	};
		
};




/***** aside  ***************************************************************************************************/

/* 내 판매글 리스트보기  */
/* midx 받아서 ㅡ> 판매글 목록(상태라벨, 제목) 화면출력 */
function myitem(midx) {

	

	$.ajax({
		url: domain+'/items/myitem/'+midx,
		type: 'GET',
		success: function(data){
			
			var html = '';
			for(var i=0; i<data.length; i++){
				var state= '';
				var stateMsg= '';
				var stateColor= '';
				var currentBuyer='';
				

				// item이 숨김처리 되있을 때, 출력안함
				if(data[i].istate == -1){
					continue;

				
				// 상태라벨 - 모집중 : 기간중이고, 결제정보가 없으면 (구매자선정 전)
				} else if(data[i].receive_check >= 0 && data[i].pstate == -1){
					state = 0;
					stateMsg = '모집중';
					stateColor = 'aside_mystate join_ing';
					currentBuyer = cntBuyer(data[i].iidx);


				// 상태라벨 - 모집완료 : 기간중이고, 결제정보가 있으면 (구매자선정 후)
				} else if(data[i].receive_check >= 0 && data[i].pstate != -1){
					state = 1;
					stateMsg = '모집완료';
					stateColor = 'aside_mystate join_com';
				
					
				// 상태라벨 - 판매완료 :  기간마감이고, 결제정보가 있으면 (미수령, 수령)
				} else if(data[i].receive_check < 0 && data[i].pstate != -1){
					state = 2;
					stateMsg = '판매완료';
					stateColor = 'aside_mystate sell_com';
					

				// 상태라벨 - 판매실패 : 기간마감이고, 결제정보가 없으면 
				} else if(data[i].receive_check < 0 && data[i].pstate == -1 ){
					state = 3;
					stateMsg = '판매실패';
					stateColor = 'aside_mystate sell_fail';
				}	
				

				html += '<div class="aside_myitem idx'+data[i].iidx+'">';
				html += '		<div class="aside_mystatewrap">';
				html += '    	  <span class="btn_regItem '+stateColor+'">'+stateMsg+'</span>';
				html += '    	  <span class="alarm a'+data[i].iidx+'" onclick="cancleAlarm('+data[i].iidx+','+data[i].seller+')">alarmtest</span>';
				if(state==0){
				html += '  	  <span class="aside_">현재참여자 : '+currentBuyer+' / 구매정원 :'+data[i].count_m+'</span>';
				}
				html += '  	</div>';
				html += '  	  <button type="button" class="aside_item_title" onclick="itemView('+data[i].iidx+')">'+data[i].iidx+'. '+data[i].title+'</button> <br>';
				html += '  	  <button type="button" class="btn_mybuyer_view" onclick="mybuyer_toggle('+data[i].iidx+')"> ▼ </button>';
				html += '  	  <div class="aside_mybuyer_list_'+data[i].iidx+'" style="display: block;"></div>';
				html += '</div>';

				mybuyer(data[i].iidx, state, data[i].count_m);

			}
			
			$('#aside_mycard').html(html);
			
			
		} // for end
	}); // ajax end
}; // myitem end





/* 내 판매글 참여자 리스트보기  */
/* iidx 받아서 ㅡ> 구매자 목록(구매자 이름, 평균평점, 총평점개수 + ostate, pstate선택) 화면출력 */
function mybuyer(iidx, state, count_m) {

	$.ajax({
		url: domain+'/items/mybuyer/'+iidx,
		type: 'GET',
		success: function(data){
			

			var html = '';
			for(var i=0; i<data.length; i++){
				var buyerState = '';
				var btn_sellerActionName1 = '';
				var btn_sellerAction1 = '';
				var stateColor= '';
				
				
				switch(state){

					// 판매글 상태 : 모집중 ㅡ>	거절버튼, 구매자선정 버튼
					case 0:
						buyerState = '참여중';
						stateColor = '';
						btn_sellerActionName1 = '거절';
						btn_sellerAction1 = '';

						
						break;
						
					// 판매글 상태 : 모집완료 ㅡ> 큐알발급버튼, 발급큐알보기버튼
					case 1:
						buyerState = '구매자';
						stateColor = '';
						if(data[i].qr==0){
							btn_sellerActionName1 = 'QR발급';
							btn_sellerAction1 = 'insertQR';
						} else {
							btn_sellerActionName1 = 'QR보기';
							btn_sellerAction1 = 'viewQR';
						}
						break;
					
					// 판매글 상태 : 판매완료 ㅡ> 구매자평점등록버튼, 글숨김버튼
					case 2:
						if(data[i].pstate==0){
							buyerState = '미수령';
							stateColor = '';
						} else{
							buyerState = '수령';
							stateColor = '';
						}
						btn_sellerActionName1 = '평점등록';
						btn_sellerAction1 = 'review';
						break;
					
					// 판매글 상태 : 판매실패 ㅡ> 글숨김버튼
					case 3: 
						buyerState = '';
						stateColor = '';
						btn_sellerActionName1 = '거절';
						btn_sellerAction1 = 'reject';
					
						break;

					
				}
				
				
				// 참여자(또는 구매자) 이름. 평균평점. 총평점수 - 기본출력
					html += '<hr>';
					html += '<div class="aside_mybuyer iidx'+data[i].iidx+'">';
					html += '    <span class="buyerState '+stateColor+'">'+buyerState+'</span>';
					html += '	<span class="buyer_name midx'+data[i].buyer+'">'+data[i].name+'</span>';
					html += '  	<span class="rvb_avg">별'+data[i].rvb_avg+'</span><span class="rvb_total">/'+data[i].rvb_totalRow+'</span>';
				
				// 모집중 일때, 참여자 거절 또는 구매자 선정 버튼 출력
				if(state==0){
					html += '    <form class="select_buyerform" onsubmit="return false;">';
					html += '    	<input type="checkbox" name="select_buyer" class="btn_sellerAction select_buyer" value="'+data[i].buyer+'">선정</button>';
					html += '    	<button type="button" name="select_reject" class="btn_sellerAction select_reject" onclick="rejectBuyer('+data[i].iidx+','+data[i].buyer+')">참여거절</button>';
					

				// 모집완료 일때, QR 생성 또는 보기 버튼 출력   
				} else if(state==1){
					html += '    <button type="button" class="btn_sellerAction '+btn_sellerAction1+'" onclick="'+btn_sellerAction1+'('+data[i].iidx+','+data[i].buyer+')">'+btn_sellerActionName1+'</button>';
					

				// 판매완료 일때, 평점등록 버튼 출력 	
				} else if(state==2){
					html += '<form class="reviewForm" onsubmit="return false;">';
					html += '      <input class="score_b_'+data[i].buyer+'" type="number">';
					html += '      <input class="insert_rvb_'+data[i].buyer+'" type="submit" value="평점 등록" onclick="reviewBuyer('+data[i].iidx+','+data[i].buyer+')" >';
					html += '</form>';
				}
				
			} //for end
		

			// 모집중 일때, 거절 또는 구매자선정 최종확인 버튼 출력
			if(state==0){
				html += '    	<span class="select_buyer_msg">*구매자 확정은 구매자를 모두 선정 한 후, 한번에 하실 수 있습니다. </span>';
				html += '    	<input type="submit" class="btn_sellerAction select_buyer_ok" onclick="selectBuyer_ok('+iidx+','+count_m+')" value="구매자 선정 확인">';
				html += '    	<input type="submit" class="btn_sellerAction delitem" onclick="delItem('+iidx+')" value="글삭제">';
				html += '    </form>';
			}
			
			
			// 판매완료 일때, 글숨김 버튼 출력. 	 
			else if(state==2){
				html += '       <input type="submit" class="purchase_del" onclick="itemHide('+iidx+')" value="글숨김">';
				html += '    	<input type="submit" class="btn_sellerAction delitem" onclick="delItem('+iidx+')" value="글삭제">';
			}
			
			// 판매실패 일때, 글숨김 버튼 출력
			else if(state==3){
				html += '       <span class="select_buyer_msg">*판매실패로 참여자는 모두 참여거절처리되었습니다. </span>';
				html += '       <input type="button" class="item_hide" onclick="itemHide('+iidx+')" value="글숨김">';
				html += '    	<input type="submit" class="btn_sellerAction delitem" onclick="delItem('+iidx+')" value="글삭제">';

			}


			html += '</div>';
			$(".aside_mybuyer_list_"+iidx).html(html);
			$(".aside_mybuyer_list_"+iidx).hide();
			
		}  //success end
	});
};  // mybuyer end



/* 내 판매글 참여자 리스트 - 토글  */
function mybuyer_toggle(iidx){
	
	$(".aside_mybuyer_list_"+iidx).toggle();

}


/* ing 나의 공구판매현황[모집중] -현재 참여자수 */
function cntBuyer(iidx){

	$.ajax({
		url : domain+'/items/mybuyerCnt/'+iidx,
		type : 'GET',
		success : function(data){
			alert(iidx+'번 글의 현재 참여자수 : '+data);
			//currentBuyer = data;

		}


	})
};




/***** 상태별 기능 ***************************************************************************************************/




/* ing 나의 공구판매현황[모집중] - 참여자 구매자 선정 */
function selectBuyer(iidx, buyer){
	
	if($(this).hasClass("select_buyer_y")){
		$(this).removeClass("select_buyer_y");
	}else{
		$(this).addClass("select_buyer_y");
	}
}


/* ing 나의 공구판매현황[모집중] - 참여자 구매자 선정 ㅡ> 확정 확인 */
function selectBuyer_ok(iidx, count_m){

	var buyerArr = [];

	alert('체크된 갯수 : '+$('input:checkbox[name="select_buyer"]:checked').length);

	//체크된 개수 >  구매정원 : 다시 선택
	if($('input:checkbox[name="select_buyer"]:checked').length > count_m){

		alert('구매정원보다 체크된 구매자 수가 많습니다. 구매정원 확인 후 다시 선택해주세요.');

	} else if($('input:checkbox[name="select_buyer"]:checked').length < count_m){

		alert('구매정원보다 체크된 구매자 수가 적습니다. 구매정원 확인 후 다시 선택해주세요.');

	} else {
		
		// 체크된 값 가져오기
		$('input[name="select_buyer"]:checked').each(function(i) { 
	
				buyerArr.push($(this).val()); 
		});

		
		alert('배열에 담긴 체크된 구매자 확인 : '+ buyerArr);


	};

	// var buyerData = {
	// 	'iidx' : iidx,
	// 	'buyerArr' : buyerArr
	// }

	$.ajax({
		url : domain+'/items/mybuyer/'+iidx,
		type : 'POST',
		traditional : true,
		//data : JSON.stringify(buyerData),
		data : { 'buyerArr' : buyerArr },
		dataType: 'json',
		contentType: "application/json",
		//processData: false, // File 전송시 필수
		//contentType: false, // multipart/form-data
		success : function(data){
			alert('선정한 구매자 등록 : ' + data);

			// 배열 초기화
			buyerArr = [];
			alert('buyerArr 배열 초기화 확인 : '+buyerArr);

		}
	});

};




/* 나의 공구판매현황[모집중] - 참여자 거절하기 */ 
function rejectBuyer(iidx, buyer){

	if(confirm('선택하신 참여자의 참여를 거절하시겠습니까?')){
		$.ajax({
			url : domain+'/items/mybuyer/'+iidx+'/'+ buyer,
			type : 'PUT',
			success : function(data){
				alert('data : '+data+', 선택하신 참여자'+buyer+'가 참여거절 처리 되었습니다.');
				myitem(midx);
				$(".aside_mybuyer_list_"+iidx).show();

			}


		})
	}


}


/* 나의 공구판매현황[모집완료] - 구매자 QR발급 */
function insertQR(iidx, buyer){
}
	
	
/* 나의 공구판매현황[모집완료] - 구매자 QR보기 */
function viewQR(iidx, buyer){
	
	$.ajax({
		url : domain+'/items/qr/'+iidx+'/'+buyer,
		type : 'GET',
		success : function(data){
			alert('발급된 qr코드 : '+data);
		}

	})
}


/* 나의 공구판매현황[판매완료] - 구매자 평점등록하기 */
function reviewBuyer(iidx, buyer){

	if(confirm('평점등록 후 수정이 불가합니다. 등록하시겠습니까?')){

		var score_b = $(".score_b_"+buyer).val();
		alert(score_b)

		var regRvFormData = new FormData();
		regRvFormData.append('score_b',score_b);
		regRvFormData.append('midx',buyer);
		regRvFormData.append('iidx',iidx);
		
		
		$.ajax({
			url : domain+'/items/review',
			type : 'POST',
			processData: false, // File 전송시 필수
			contentType: false, // multipart/form-data
			data : regRvFormData,
			success : function(data){
				$(".score_b_"+buyer).attr("disabled",true);
				$(".insert_rvb_"+buyer).css("display","none");
				alert(iidx+'번 글의 구매자 '+buyer+'님의 평점 '+data+'건을 등록했습니다.')
			}

		});

	}	

}


/* 나의 공구판매현황[판매완료, 판매실패] - 글숨김 */
function itemHide(iidx){

	$.ajax({
		url : domain +'/items/hide/'+iidx,
		type : 'PUT',
		success : function(data){
			myitem(midx);
			itemlist();

		}

	});



}