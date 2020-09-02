//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";

var login_midx = 1;


/***** buyer ********************************************************************************************/


/* 내 구매현황 탭 클릭 */
$('.btn_myOderlist').click(function(){

    $('.aside_myItemlist').css('display','none');
    $('.aside_myOrderlist').css('display','block');
    myOrder(login_midx);


});


/* 내 구매현황 출력*/
function myOrder(login_midx){

    $.ajax({
        url : domain+'/orders/'+login_midx,
        type : 'GET',
        success: function(data){
            
            var html = '';
			for(var i=0; i<data.length; i++){
				var state= '';
				var stateMsg= '';
				var stateColor= '';
				var currentBuyer='';
				

				// order가 숨김처리 되있을 때, 출력안함
				if(data[i].ostate == -2){
					continue;

				} else if(data[i].label=="참여중"){
					state = 0;
                    stateColor = 'aside_mystate join_com';
                    btn_buyerActionName = '참여취소';
				
				} else if(data[i].label=="다음기회에..."){
					state = 1;
                    stateColor = 'aside_mystate join_ing';
                    btn_buyerActionName = '글삭제';
                
                    
				} else if(data[i].label=="구매자"){
					state = 2;
                    stateColor = 'aside_mystate sell_com';
                    
					
				} else if(data[i].label=="구매완료"){
					state = 3;
                    stateColor = 'aside_mystate sell_fail';
                    btn_buyerAction = '$(".reviewForm").toggle()';
				}	
				

				html += '<div class="aside_mycard iidx'+data[i].iidx+'">';
				html += '	<div class="aside_mystatewrap">';
				html += '    	  <span class="btn_regItem '+stateColor+'">'+data[i].label+'</span>';
				html += '    	  <span class="alarm ba'+data[i].iidx+'" onclick="cancleAlarm('+data[i].iidx+','+data[i].buyer+')">alarmtest</span>';
				html += '  	</div>';
                html += '  	  <button type="button" class="aside_item_title" onclick="itemView('+data[i].iidx+')">'+data[i].iidx+'. '+data[i].title+'</button>';
                
                // 참여중, 다음기회에.. ㅡ> 참여취소(글삭제) 버튼 활성화
                if(state ==0 || state ==1 ){
                    html += '  	  <button type="button" class="btn_buyerAction '+btn_buyerAction+'" onclick="cancleOrder('+data[i].oidx+','+state+')">'+btn_buyerActionName+'</button>';
                
                // 구매자 ㅡ> QR보기 버튼 활성화
                } else if(state==2){
                    html += '  	  <button type="button" class="btn_buyerAction viewQR" onclick="viewQR('+data[i].iidx+','+data[i].buyer+')">QR보기</button>';
                
                // 구매완료 ㅡ> 평점등록 버튼 활성화
                } else if(state==3){
                    html += '  	  <button type="button" class="btn_buyerAction reviewSeller" onclick="reviewForm_toggle()">평점등록</button>';
                    html += '         <form class="reviewForm" onsubmit="return false;">';
					html += '           <input class="score_s_'+data[i].seller+'" type="number">';
					html += '           <input class="insert_rvs_'+data[i].seller+'" type="submit" value="평점 등록" onclick="reviewSeller('+data[i].iidx+','+data[i].seller+')" >';
					html += '         </form>';
					html += '     <button type="button" class="btn_buyerAction hideOrder" onclick="hideOrder('+data[i].oidx+')">글숨김</button>';
					html += '     <button type="button" class="btn_buyerAction delOrder" onclick="delOrder('+data[i].oidx+','+data[i].pidx+')">글삭제</button>';
                    
                }

                html += '</div>';
                
                
			} // for end
            
            
			$('#aside_myOrderlist').html(html);
            $(".reviewForm").hide();
            
			
			
		} // success end

    })

};

/* 평점등록 폼 토글 */
function reviewForm_toggle(){
    $(".reviewForm").toggle();
}



/* 참여신청 */
function regOrder(login_midx, iidx){

    $.ajax({
        url : domain+'/orders/'+login_midx+'/'+iidx,
        type : 'POST',
        success : function(data){

            if(result==-1){
                data('이미 신청하신 내역이 있습니다.');
            }else if(data==-2){
                alert('신청하신 공구의 참여인원이 마감되어, 참여신청이 불가합니다. ');
            }else if(data==1){
                alert('참여신청이 완료되었습니다.');
            }

            myOrder(login_midx);
        },
        Error : function(e){
            alert('참여신청 에러발생');

            myOrder(login_midx);
        }

    });

};



/***** 상태별 기능 ***************************************************************************************************/

/* 나의 공구구매현황[참여중][다음기회에..] - 참여취소 (글삭제) */
function cancleOrder(oidx, state){

    var msg1='';
    var msg2='';
    var msg3='';
    
    switch(state){
        
        case 0:
            msg1 = "참여신청을 취소하시겠습니까?";
            msg2 = "참여신청이 취소되었습니다.";
            msg3 = '참여신청이 정상처리되지 않았습니다. 다시 시도해주세요.';
        break;

        case 1:
            msg1 = "글을 삭제하시겠습니까?";
            msg2 = "글이 정상적으로 삭제되었습니다.";
            msg3 = '글이 정상 삭제처리되지 않았습니다. 다시 시도해주세요.';
        break;
    
    };
     
    
    if(confirm(msg1)){

        $.ajax({
            url : domain+'/orders/'+oidx,
            type : 'DELETE',
            success : function(data){

                if(data==1){
                    alert(msg2);
                } else {
                    alert(msg3);
                }
                
                myOrder(login_midx);

            }
        }); 

    };

};



/* 나의 공구구매현황[구매자] - 평점등록 */
function reviewSeller(iidx, seller){
    
    if(confirm('평점등록 후 수정이 불가합니다. 등록하시겠습니까?')){

		var score_s = $(".score_s_"+seller).val();
		alert("score_s : "+score_s);

		var regRvFormData = new FormData();
		regRvFormData.append('score_s',score_s);
		regRvFormData.append('midx',seller);
		regRvFormData.append('iidx',iidx);
		
		
		$.ajax({
			url : domain+'/orders/',
			type : 'POST',
			processData: false, // File 전송시 필수
			contentType: false, // multipart/form-data
			data : regRvFormData,
			success : function(data){

				$(".score_s_"+seller).attr("disabled",true);
                $(".insert_rvs_"+seller).css("display","none");
                
                alert(iidx+'번 글의 판매자 '+seller+'님의 평점 '+data+'건을 등록했습니다.')
                
			}

		});

	}	

}




/* 나의 공구구매현황[구매완료] - 글숨김 */
function hideOrder(oidx){
    
    if(confirm('글 숨김 처리 후 다시 해제할 수 없습니다. 글 숨김 하시겠습니까?')){

		$.ajax({
			url : domain+'/orders/'+oidx,
			type : 'PUT',
			success : function(data){

                if(data==1){
                    alert('글이 숨김처리 되었습니다.');
                } else {
                    alert('글이 숨김처리 되지 않았습니다. 다시 시도해주세요.');
                }

                myOrder(login_midx);
			}
		});
	};	
};



/* 나의 공구구매현황[구매완료] - 글삭제 */
function delOrder(oidx, pidx){
    
    if(confirm('글을 삭제하시겠습니까?')){

		$.ajax({
			url : domain+'/orders/'+oidx +'/'+pidx,
			type : 'DELETE',
			success : function(data){

                if(data==2){
                    alert('글이 삭제처리 되었습니다.');
                } else {
                    alert('글이 정상적으로 삭제처리 되지 않았습니다. 다시 시도해주세요.');
                }

                myOrder(login_midx);

			}
		});
	};	
};



