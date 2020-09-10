//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
var domain = "http://localhost:8080/order";


/***** item : 공구 리스트 출력. 정렬. 등록. 삭제  ******************************************************************/

var loginMidx = 1;
var recomItems = [];    // 추천 공구 리스트 담아두는 배열
var items = [];			// 일반 공구 리스트 담아두는 배열
var sortRecomItems = []; 
var sortItems = []; 




 $(document).ready(function(){
	allItemlist();

	/* 검색기능 */
	$("#myInput").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$("#myTable tr").filter(function() {
		  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	  });



	/* 나의 공구구매현황[구매자] - 평점등록  */
    /* 별 표시  */
    /* 1. Visualizing things on Hover - See next part for action on click */
    $('#stars li').mouseover(function(){
        var onStar = parseInt($(this).data('value'), 10); // The star currently mouse on
    
        // Now highlight all the stars that's not after the current hovered star
        $(this).parent().children('li.star').each(function(e){
        if (e < onStar) {
            $(this).addClass('hover');
        }
        else {
            $(this).removeClass('hover');
        }
        });
        
    
    }).mouseout(function(){
        $(this).parent().children('li.star').each(function(e){
            $(this).removeClass('hover');
        });
    });
    


    /* 나의 공구구매현황[구매자] - 평점등록  */
    /* 별 표시 - 평점계산  */
    /* 2. Action to perform on click */
    $('#stars li').click(function(){

        var onStar = parseInt($(this).data('value'), 10); // The star currently selected
        var stars = $(this).parent().children('li.star');

        for (i = 0; i < stars.length; i++) {
            $(stars[i]).removeClass('selected');
        }

        for (i = 0; i < onStar; i++) {
            $(stars[i]).addClass('selected');
        }

        // JUST RESPONSE (Not needed)
        var ratingValue = parseInt($('#stars li.selected').last().data('value'), 10);
        alert('ratingValue : '+ratingValue);

        $(this).parent().eq(2).data('value',ratingValue);

    });

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

			// 배열 새로 비우고 담아야한다.. 안그러면 정렬하고 돌아오면 배열요소 추가로 담겨 평점정렬할 때 요소 2배로 나온다..
			recomItems=[];
			
			// 추천 공구 리스트 ㅡ> 배열에 담기
			for (i in data) {
				recomItems.push(data[i]);
			}

			// recomItems = JSON.stringify(data);
			// alert('recomItems : '+recomItems);

			
			itemlist_print(data);

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

			// 배열 새로 비우고 담아야한다.. 안그러면 정렬하고 돌아오면 배열요소 추가로 담겨 평점정렬할 때 요소 2배로 나온다..
			items=[]; 

			// 일반 공구 리스트 ㅡ> 배열에 담기
			for (i in data) {
				items.push(data[i]);
			}
			
			// items = JSON.stringify(data);
			// alert('items : '+items);
			
			itemlist_print(data);

		} // success end

	});

}; // itemlist() end



/* 공구글 출력기능 */
function itemlist_print(data){

	var check = data[0].istate; 

	var html = '';
	var cardType = '';
	var selectDiv = '';


	switch(check){

		// 일반공구글
		case 0: 
			swiperType = 0;
			cardType = 'item_card';
			selectDiv = '#itemlist_small_area';

			// 출력되어있는 일반 공구리스트 지우고 ㅡ> 다시 출력
			$('#itemlist_small_area').html(' ');
		break;
			
			
		// 추천공구글
		case 1:
			swiperType = 1;
			cardType = 'item_card_big';
			selectDiv = '.swiper-wrapper';
			//selectDiv = '#itemlist_big_area';
			
			
			// 출력되어있는 추천 공구리스트 지우고 ㅡ> 다시 출력
			//$('#itemlist_big_area').html(' ');
			$('.swiper-wrapper').html(' ');
		break;

	};

	
	$('#itemlist_area').css('display','block');
	$('#itemRegForm_area').css('display','none');
	$('#itemView_area').css('display','none');
	
	
	for(var i=0; i<data.length; i++){

		if(swiperType==1){
			html += '<div class="swiper-slide">';
		};

		html += '	<button class="'+cardType+'" onclick="itemView('+data[i].iidx+','+loginMidx+')">';
		//html += '		<input type="hidden" value="'+data[i].iidx+'">';
		html += '		<img class="item_img" src="/order/upload/'+data[i].photo+'">';
		html += '		<div class="item_info">';
		//html += '			<div>istate : '+data[i].istate+'</div>';
		//html += '			<div>pstate : '+data[i].pstate+'</div>';
		html += '			<h3 class="item_title">'+data[i].iidx+': '+data[i].title+'</h3>';
		html += '				<span class="seller_name">'+data[i].midx+'.'+data[i].name+' | 평균 ★ '+data[i].rvs_avg+'(총 '+data[i].rvs_totalRow+'건)</span><br>';
		html += '				<h4 class="seller_rating">view '+data[i].view_count+'</h4>';
		html += '				<h4 class="item_price">price : '+data[i].price+'</h4> ';
		html += '				<h4 class="item_limitDate">D-day : '+data[i].receive+'</h4>';
		html += '				<h4 class="item_location">D-day : '+data[i].location+'</h4>';
		html += '		</div>';
		html += '	</button>';
		
		if(swiperType==1){
			html += '</div>';
		};
		
	} // for end
		

		// 표시되는 위치
		$(selectDiv).html(html);


}; // itemlist_print(data) end







/* 평점순 클릭시 ㅡ> 평점순 정렬 후 리스트 출력  */
function allItemlist_sortRvs(){

	// 버튼 색상변경
	$('.sort_rvs').css('background-color', 'teal');
	$('.sort_reg').css('background-color', 'aquamarine');

	// 평점순 정렬기능 호출
	sortRvs(recomItems);
	sortRvs(items);

};



/* 평점순 정렬기능 */
function sortRvs(arr){

	arr.sort(function (a, b) { 
		return b.rvs_avg - a.rvs_avg;  
	});

	// 공구 리스트 다시 출력
	itemlist_print(arr);
	
};







/* 공구등록 폼  */
function regItemForm(){
	
	$('#itemlist_area').css('display','none');
	$('#itemView_area').css('display','none');
    $('#itemRegForm_area').css('display','block');
   
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
			// allItemlist();

		},

		Error: function(error){
			alert('공구등록 실패');
			allItemlist();
		}
		
	});
		
		
};



/* 공구글 상세보기 */
function itemView(iidx, loginMidx) {
	

	$.ajax({
		url: domain+'/items/'+iidx,
		type: 'GET',
		success: function(data){

			$('#itemlist_area').css('display','none');
			$('#itemRegForm_area').css('display','none');
			$('#itemView_area').css('display','block');
			
			var html = '';
				
			html += '<div class="w3-container" class="ItemView" style="margin-top:65px;" >';
			html += '	<h2 class="w3-xlarge text-purple"><b>Item View</b></h2>';
			html += '	<hr style="width:50px;border:5px solid purple;"  class="w3-round">';
			html += '</div>';
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
			html += '			<input type="button" class="btn_itmelist" value="목록으로" onclick="allItemlist()">'; 

			// 만약에 로그인한 사람이 작성자가 아니면, 참여신청버튼 활성화
			if(loginMidx != data.midx){
				html += '			<input type="button" class="btn_join" value="참여신청" onclick="regOrder('+loginMidx+','+data.iidx+')">';
			}

			// 만약에 로그인한 사람이 작성자와 같으면, 글수정. 글삭제 활성화
			if(loginMidx == data.midx){
				html += '			<input type="button" class="btn_itmelist" value="글수정" onclick="editItem('+data.iidx+')">'; 
				html += '			<input type="button" class="btn_itmelist" value="글삭제" onclick="delItem('+data.iidx+')">'; 
			}
			html += '		</td></tr>'; 
			html += '	</table>';
			html += '</div">';
			
			$('#itemView_area').html(html);
			
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
				allItemlist();
				myitem(midx);
				
			}

		});
	};
		
};




