//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";

var loginMidx = 1;


/***** search ********************************************************************************************/

/* 카테고리 정렬 */
function filterSelection(c) {
    
  $(".item_card_big").css('display', 'none');
  $(".item_card").css('display', 'none');
  $('.'+c).css("display","inline-block");

};  // filterSelection(c) end



$('.btn_search_category').click(function(){

    $('.btn_search_category').removeClass("active");
    $(this).addClass("active");

});

