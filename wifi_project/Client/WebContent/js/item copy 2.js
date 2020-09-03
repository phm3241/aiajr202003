//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";


/***** item : 공구 리스트 출력. 정렬. 등록. 삭제  ******************************************************************/

var login_midx = 1;
var recomItems = [];
var items = [];
var sortedRecomItems = [];
var sortedItems = [];

 $(document).ready(function(){
	allItemlist()

 });



/* 모든 공구글 리스트 */
function allItemlist(){
	recomItemlist();
	itemlist();
}

/* 추천 공구 리스트 */
function recomItemlist(){

	$('.sort_reg').css('background-color', 'teal');
	$('.sort_rvs').css('background-color', 'aquamarine');
	
	$.ajax({
		url: domain+'/items/recomItem',
		type: 'GET',
		success: function(data){

			recomItems = JSON.stringify(data);
			// alert('recomItems : '+recomItems);
			itemlist_print(data);
			
			
			// var html = '';
				
			// for(var i=0; i<data.length; i++){
				
			// 	html += '<button class="item_card_big" onclick="itemView('+data[i].iidx+','+login_midx+')">';
			// 	//html += '	<input type="hidden" value="'+data[i].iidx+'">';
			// 	html += '	<img class="item_img" src="/order/upload/'+data[i].photo+'">';
			// 	html += '	<div class="item_info">';
			// 	html += '		<div>istate : '+data[i].istate+'</div>';
			// 	html += '		<div>pstate : '+data[i].pstate+'</div>';
			// 	html += '		<h3 class="item_title">'+data[i].iidx+': '+data[i].title+'</h3>';
			// 	html += '			<span class="seller_name">판매자 : '+data[i].midx+'</span><br>';
			// 	html += '			<span class="seller_rating">판매자 평균평점'+data[i].rvs_avg+'<span></span></span><br>';
			// 	html += '			<span class="seller_rating">판매자 총평점개수'+data[i].rvs_totalRow+'<span></span></span><br>';
			// 	html += '			<span class="seller_rating">조회수'+data[i].view_count+'<span></span></span><br>';
			// 	html += '			<span class="item_price">가격 : '+data[i].price+'</span> ';
			// 	html += '			<span class="item_limitDate">수령일 : '+data[i].receive+'</span>';
			// 	html += '	</div>';
			// 	html += '</button>';

			// } 

			// 	// 추천공구글일 때 표시되는 위치
			// 	$('#itemlist_big_area').html(html);


		} // success end

	});


}; // recomItemlist()  end



/* 일반 공구 리스트 */
function itemlist(){

	$('.sort_reg').css('background-color', 'teal');
	$('.sort_rvs').css('background-color', 'aquamarine');
	
	$.ajax({
		url: domain+'/items',
		type: 'GET',
		success: function(data){

			items = JSON.stringify(data);
			//alert('items : '+items);

			itemlist_print(data);



			// var html2 = '';
				
			// for(var i=0; i<data.length; i++){
				
			// 	var state = '';

			// 	// 모집중
			// 	//if(data[i].pstate==-1){
			// 	//	state = '';

				
			// 	// 모집완료
			// 	//} else if(data[i].pstate != -1){
			// 	//	state='';
			// 	//}


			// 	html2 += '<button class="item_card" onclick="itemView('+data[i].iidx+','+login_midx+')">';
			// 	//html += '	<input type="hidden" value="'+data[i].iidx+'">';
			// 	html2 += '	<img class="item_img" src="/order/upload/'+data[i].photo+'">';
			// 	html2 += '	<div class="item_info">';
			// 	html2 += '		<div>istate : '+data[i].istate+'</div>';
			// 	html2 += '		<div>pstate : '+data[i].pstate+'</div>';
			// 	html2 += '		<h3 class="item_title">'+data[i].iidx+': '+data[i].title+'</h3>';
			// 	html2 += '			<span class="seller_name">판매자 : '+data[i].midx+'</span><br>';
			// 	html2 += '			<span class="seller_rating">판매자 평균평점'+data[i].rvs_avg+'<span></span></span><br>';
			// 	html2 += '			<span class="seller_rating">판매자 총평점개수'+data[i].rvs_totalRow+'<span></span></span><br>';
			// 	html2 += '			<span class="seller_rating">조회수'+data[i].view_count+'<span></span></span><br>';
			// 	html2 += '			<span class="item_price">가격 : '+data[i].price+'</span> ';
			// 	html2 += '			<span class="item_limitDate">수령일 : '+data[i].receive+'</span>';
			// 	html2 += '	</div>';
			// 	html2 += '</button>';

			// } // for end


			// 	// 일반공구글일 때 표시되는 위치
			// 	$('#itemlist_small_area').html(html2);

		} // success end

	});

}; // itemlist() end








/* 공구글 출력 */
function itemlist_print(data){

	// 배열 안에 선택키의 값
	var istate = data[Object.keys(data)[12]];
	var html = '';
	var cardType = '';
	var selectDiv = '';


	switch(istate){

		// 일반공구글
		case 0: 
			cardType = 'item_card';
			selectDiv = '#itemlist_big_area';
			

		// 추천공구글
		case 1:
			cardType = 'item_card_big';
			selectDiv = '#itemlist_small_area';
	};


	for(var i=0; i<data.length; i++){
		
		var state = '';

		// 모집중
		//if(data[i].pstate==-1){
		//	state = '';

		
		// 모집완료
		//} else if(data[i].pstate != -1){
		//	state='';
		//}


		html += '<button class="'+cardType+'" onclick="itemView('+data[i].iidx+','+login_midx+')">';
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

	} // for end

		// 표시되는 위치
		$(selectDiv).html(html);

}; // itemlist_print(data) end







/* 정렬 - 평점순 */
function allItemlist_sortRvs(){

	$('.sort_reg').css('background-color', 'aquamarine');
	$('.sort_rvs').css('background-color', 'teal');

	sortedRecomItems = sortRvs(recomItems);
	sortedItems = sortRvs(items);

	itemlist_print(sortedRecomItems);
	itemlist_print(sortedItems);

};


/* 정렬 - 평점순 */
function sortRvs(arr){
	return arr.sort(function (a, b) { 
		return b.rvs_avg - a.rvs_avg;  
		//return a.rvs_avg < b.rvs_avg ? -1 : a.seq > b.seq ? 1 : 0;  
	});
};









// 정렬 참고코드
// var myArguments = [1, 1, 2, 3];
// var sortedArguments = [];

// function highest(myArguments){ 
//   return myArguments.sort(function(a,b){ 
//     return b - a; 
//   }); 
// }
// sortedArguments = highest(myArguments); 










/* 공구등록 폼  */
function regItemForm(){
   //$("#regItemForm_page").css("display","block");
   $("#regItemForm").hide();
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

	regFormData.append('state', $('input[name="state"]:checked').val());
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
function itemView(iidx, login_midx) {

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
			html += '			<input type="button" class="btn_itmelist" value="목록으로" onclick="itemlist()">'; 

			// 만약에 로그인한 사람이 작성자가 아니면, 참여신청버튼 활성화
			if(login_midx != data.midx){
				html += '			<input type="button" class="btn_join" value="참여신청" onclick="regOrder('+login_midx+','+data.iidx+')">';
			}

			// 만약에 로그인한 사람이 작성자와 같으면, 글수정. 글삭제 활성화
			if(login_midx == data.midx){
				html += '			<input type="button" class="btn_itmelist" value="글수정" onclick="editItem('+data.iidx+')">'; 
				html += '			<input type="button" class="btn_itmelist" value="글삭제" onclick="delItem('+data.iidx+')">'; 
			}
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




