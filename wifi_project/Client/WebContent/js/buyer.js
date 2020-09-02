//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";

var login_midx = 1;


/***** buyer ********************************************************************************************/

$(document).ready(function(){



});


/* 내 구매현황 탭 클릭 */
$('.btn_myOderlist').click(function(){



});

/* 내 구매현황 출력*/
function myOrder(){

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



    })

};



/* 참여신청 */
function regOrder(login_midx, iidx){

    $.ajax({
        url : domain+'/orders/'+login_midx+'/'+iidx,
        type : 'POST',
        success : function(result){

            if(result==-1){
                alert('이미 신청하신 내역이 있습니다.');
            }else if(result==-2){
                alert('신청하신 공구의 참여인원이 마감되어, 참여신청이 불가합니다. ');
            }else if(result==1){
                alert('참여신청이 완료되었습니다.');
            }
        },
        Error : function(e){
            alert('참여신청 에러발생');
        }

    });

};


