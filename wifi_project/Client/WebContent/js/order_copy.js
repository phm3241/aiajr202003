//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";

/*  */
function regItemForm(){
   //$("#regItemForm_page").css("display","block");
   $(".regItemForm").toggle();
   
};

/* 공구글 등록 */
function regItem(){
		
		var regFormData = new FormData();
		regFormData.append('title', $('#title').val());
		regFormData.append('price', $('#price').val());
		regFormData.append('count_w', $('#count_w').val());
		regFormData.append('count_m', $('#count_m').val());
		regFormData.append('receive', $('#receive').val());
		regFormData.append('addr', $('#addr').val());
		regFormData.append('location', $('#location').val());
		regFormData.append('content', $('#content').val());
		regFormData.append('category', $('#category').val());
		regFormData.append('midx', $('#midx').val());
		// 파일 첨부
		if($('#photo')[0].files[0] != null){
			regFormData.append('photo',$('#photo')[0].files[0]);
		};
		
		$.ajax({
			url : domain+'/item',
			type : 'post',
			processData: false, // File 전송시 필수
			contentType: false, // multipart/form-data
			data : regFormData,
			success : function(data){
				alert(data); 
				itemView(data.iidx);
				//itemList();
				document.getElementById('regItemForm').reset();
			}
		});
		
	};



	/* 공구글 상세보기 */
	function itemView(iidx) {
		$.ajax({
			url: domain+'/item/'+iidx,
			type: 'get',
			success: function(data){
				
				var html = '';
					
				html += '<div class="itemView_table">';
				html += '	<table border="1">';
				html += '		<tr><td>제목</td><td>'+data.title+'</td></tr>';
				html += '		<tr><td>작성자</td><td>'+data.midx+'</td></tr>';
				html += '		<tr><td>첨부사진</td><td>'+data.photo+'</td></tr>';
				html += '		<tr><td>카테고리</td><td>'+data.category+'</td></tr>';
				html += '		<tr><td>가격</td><td>'+data.price+'</td></tr>';
				html += '		<tr><td>모집정원</td><td>'+data.count_w+'</td></tr>';
				html += '		<tr><td>대기정원</td><td>'+data.count_m+'</td></tr>';
				html += '		<tr><td>물품수령일시</td><td>'+data.receive+'</td></tr>';
				html += '		<tr><td>판매처</td><td>'+data.addr+'</td></tr>';
				html += '		<tr><td>좌표</td><td>'+data.location+'</td></tr>';
				html += '		<tr><td>본문</td><td>'+data.content+'</td></tr>';
				html += '	</table>';
				html += '</div">';
				
				$('#itemView').html(html);
				
			}


		});

	} //itemView() end



	/* 공구글 리스트 */
	/* function itemlist() {
		
		$.ajax({
			url: 'http://localhost:8080/item',
			type: 'get',
			success: function(data){
				//alert(JSON.stringify(data));
				
				//$('#memberList').html(JSON.stringify(data));
				
				var html = '';
				
				
				for(var i=0; i<data.length; i++){
					// 추천 공구글
					if(data[i].state == 1){
						html += '<div class="card">';
						html += '	<ul>';
						html += '		<li>idx : '+data[i].idx+'</li>';
						html += '		<li>uid : '+data[i].uid+'</li>';
						html += '		<li>upw : '+data[i].upw+'</li>';
						html += '		<li>uName : '+data[i].uname+'</li>';
						html += '		<li>uPhoto :'+data[i].uphoto+'</li>';
						html += '		<li><input type="button" value="수정" onclick="editForm('+data[i].idx+')"> ';
						html += '		<input type="button" value="삭제" onclick="deleteMember('+data[i].idx+')"></li>';
						html += '	</ul>';
						html += '</div>';
					}

					// 일반 공구글
					html += '<div class="card">';
					html += '	<ul>';
					html += '		<li>idx : '+data[i].idx+'</li>';
					html += '		<li>uid : '+data[i].uid+'</li>';
					html += '		<li>upw : '+data[i].upw+'</li>';
					html += '		<li>uName : '+data[i].uname+'</li>';
					html += '		<li>uPhoto :'+data[i].uphoto+'</li>';
					html += '		<li><input type="button" value="수정" onclick="editForm('+data[i].idx+')"> ';
					html += '		<input type="button" value="삭제" onclick="deleteMember('+data[i].idx+')"></li>';
					html += '	</ul>';
					html += '</div>';
					
				} // for end

					// 추천공구글일 때 표시되는 위치
					if(data[i].state == 1){
						$('#itemlist_big_area').html(html);
					}
					
					// 일반공구글일 때 표시되는 위치
					$('#itemlist_big_area').html(html);
				
			} 
		});
	}; */