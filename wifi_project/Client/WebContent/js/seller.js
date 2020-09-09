//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";

var loginMidx = 1;



/***** seller ********************************************************************************************/



/* 내 구매현황 탭 클릭 */
$('.btn_myItemlist').click(function(){
    $('.aside_myOrderlist').css('display','none');
    $('.aside_myItemlist').css('display','block');
    $('.btn_myItemlist').css('background-color','rgb(87, 2, 87)');
    $('.btn_myOderlist').css('background-color','purple');
    myitem(loginMidx);


});



/* 내 판매글 리스트보기  */
/* midx 받아서 ㅡ> 판매글 목록(상태라벨, 제목) 화면출력 */
function myitem(loginMidx) {

	$.ajax({
		url: domain+'/items/myitem/'+loginMidx,
		type: 'GET',
		success: function(data){
			
			var html = '';
			for(var i=0; i<data.length; i++){
				var state= '';
				var stateColor= '';
				
				
				if(data[i].label=="모집중"){
					state = 0;
					stateColor = 'aside_mystate join_ing';


				} else if(data[i].label=="모집완료"){
					state = 1;
					stateColor = 'aside_mystate join_com';
				
					
				} else if(data[i].label=="판매완료"){
					state = 2;
					stateColor = 'aside_mystate sell_com';
					

				} else if(data[i].label=="판매실패"){
					state = 3;
					stateColor = 'aside_mystate sell_fail';
				}	
				

				html += '<div class="aside_mycard iidx'+data[i].iidx+'">';
				html += '		<div class="aside_mystatewrap">';
				html += '    	  <span class="btn_regItem '+stateColor+'">'+data[i].label+'</span>';
				html += '    	  <span class="alarm sa'+data[i].iidx+'" onclick="cancleAlarm('+data[i].iidx+','+data[i].seller+')">alarmtest</span>';
				if(state==0){
				html += '  	  	  <span class="aside_'+data[i].iidx+'">현재참여자 : '+data[i].cntBuyer+'명 / 구매정원 :'+data[i].count_m+'명</span>';
				}
				html += '  	</div>';
				html += '  	  <button type="button" class="aside_item_title" onclick="itemView('+data[i].iidx+')">'+data[i].iidx+'. '+data[i].title+'</button> <br>';
				html += '  	  <button type="button" class="btn_mybuyer_view" onclick="mybuyer_toggle('+data[i].iidx+')"> ▼ </button>';
				html += '  	  <div class="aside_mybuyer_list_'+data[i].iidx+'" style="display: block;"></div>';
				html += '</div>';

				// 해당 판매글의 참여자 리스트 
				mybuyer(data[i].iidx, state, data[i].count_m);

			}
			
			$('#aside_myItemlist').html(html);
			
			
			
		} // for end
	}); // ajax end
}; // myitem end




var autoReject=[];  // 판매실패일 때, 자동 거절처리되는 참여자배열


/* 내 판매글 참여자 리스트보기  */
/* iidx 받아서 ㅡ> 구매자 목록(구매자 이름, 평균평점, 총평점개수 + ostate, pstate선택) 화면출력 */
function mybuyer(iidx, state, count_m) {

	$.ajax({
		url: domain+'/items/mybuyer/'+iidx,
		type: 'GET',
		success: function(data){
			
			var buyerState = '';
			var btn_sellerActionName1 = '';
			var btn_sellerAction1 = '';
			var stateColor= '';
			

			var html = '';

			
			for(var i=0; i<data.length; i++){
				
				
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
					html += '  	<span class="rvb_avg">별'+data[i].rvb_avg+'</span><span class="rvb_total">/'+data[i].rvb_totalRow+'</span><br>';
				
				// 모집중 일때, 참여자 거절 또는 구매자 선정 버튼 출력
				if(state==0){
					//html += '    <form class="select_buyerform" onsubmit="return false;">';
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
				

				// 판매실패 일때, 글숨김 버튼 출력
				} else if(state==3){
					autoReject.push(data[i].buyer);

				}
				
			} //for end
		

			// 모집중 일때, 거절 또는 구매자선정 최종확인 버튼 출력
			if(state==0){
				html += '    	<span class="select_buyer_msg">*구매자 확정은 구매자를 모두 선정 한 후, 한번에 하실 수 있습니다. </span>';
				html += '    	<input type="button" class="btn_sellerAction select_buyer_ok" onclick="selectBuyer('+iidx+','+count_m+')" value="구매자 선정 확인">';
				html += '    	<input type="button" class="btn_sellerAction delitem" onclick="delItem('+iidx+')" value="글삭제">';
				//html += '    </form>';
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
					
					alert('메서드 보내기전 확인 autoReject :'+autoReject);
					autoRejectBuyer(iidx, [autoReject] );
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





/***** 상태별 기능 ***************************************************************************************************/


var buyerArr = [];
var rejectArr = [];


/* ing 나의 공구판매현황[모집중] - 참여자 구매자 선정. 체크 */
function selectBuyer(iidx, count_m){

	alert('체크된 갯수 : '+$('input:checkbox[name="select_buyer"]:checked').length);

	// 체크된 개수 !=  구매정원 ㅡ> 다시 선택
	if($('input:checkbox[name="select_buyer"]:checked').length > count_m){
		alert('구매정원보다 체크된 구매자 수가 많습니다. 구매정원 확인 후 다시 선택해주세요.');

	} else if($('input:checkbox[name="select_buyer"]:checked').length < count_m){
		alert('구매정원보다 체크된 구매자 수가 적습니다. 구매정원 확인 후 다시 선택해주세요.');


	// 	체크된 개수 = 구매정원 ㅡ> 확정. 자동거절 처리
	} else {
		
		// 체크된 값 가져오기 ㅡ> 구매자 확정처리
		$('input[name="select_buyer"]:checked').each(function(i) { 
	
			buyerArr.push($(this).val()); 
		});

			alert('배열에 담긴 선정된 구매자 확인 : '+ buyerArr);
			selectBuyer_ok(iidx, buyerArr);


		
		// 체크되지 않은 값 가져오기 ㅡ> 자동 거절처리
		if($('input[name="select_buyer"]:not(:checked)').length != 0){
			
			$('input[name="select_buyer"]:not(:checked)').each(function(i) { 
				rejectArr.push($(this).val()); 
			
			});

			alert('배열에 담긴 거절한 참여자 확인 : '+ rejectArr);
			autoRejectBuyer(iidx, rejectArr);
		};
	};
};




/* ing 나의 공구판매현황[모집중] - 참여자 구매자 선정 ㅡ> 확정 처리 */
function selectBuyer_ok(iidx, buyerArr){
	
	// var selecFormData = new FormData();
	// selecFormData.append('')

	var selectData = {
		iidx : iidx,
		buyerArr : buyerArr,
	};

	alert('selectData.buyerArr : '+selectData.buyerArr);

	$.ajax({
		url : domain+'/items/mybuyer',
		type : 'POST',
		//traditional : true,
		//processData: false, // File 전송시 필수
		//contentType: false, // multipart/form-data
		contentType: "application/json",
		//contentType :   "application/x-www-form-urlencoded",
		//dataType: "json",
		//data : selectData,
		data : JSON.stringify(selectData),

		
		success : function(data){
			alert('선정한 구매자 등록 : ' + data);

			// 배열 초기화
			buyerArr = [];
			alert('buyerArr 배열 초기화 확인 : '+buyerArr);
		},
		error:function(jqXHR, textStatus, errorThrown){
            alert("에러 발생~~ \n" + textStatus + " : " + errorThrown);
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
};



/* 나의 공구판매현황[모집중. 판매실패] - 참여자 자동거절처리 */
/* 구매자 선정하면 나머지 선택하지 않은 참여자, 판매실패하면 참여자 자동 거절처리 */ 
function autoRejectBuyer(iidx, buyer){

	alert('참여자 자동 거절처리');
	alert(iidx+'번 글. 매개변수 buyer배열확인 : '+buyer);

	var rejectData = { buyer : buyer };

	$.ajax({
		url : domain+'/items/mybuyer/'+iidx,
		type : 'POST',
		data : JSON.stringify(rejectData),
		contentType: "application/json",
		//contentType :   "application/x-www-form-urlencoded",
		//dataType: "json",
		success : function(data){
			alert('data : '+data+', 선택하신 참여자'+buyer+'가 참여거절 처리 되었습니다.');
			myitem(midx);
			$(".aside_mybuyer_list_"+iidx).show();
			autoReject=[]; 	// 배열초기화
			alert('autoReject 배열 초기화 확인 : '+autoReject);

		}
	});

};


/* ing 나의 공구판매현황[모집완료] - 구매자 QR발급 */
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
			allItemlist();

		}

	});



}