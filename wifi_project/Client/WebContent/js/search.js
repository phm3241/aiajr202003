//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";

var loginMidx = 1;


/***** search ********************************************************************************************/

/* 카테고리 정렬 */
function filterSelection(c) {

  alert('카테고리 정렬 시작 c: ' + c);

  // if(c == "category0"){
    // $(".item_card_big").addClass("show");
    // $(".item_card").addClass("show");
  
  // } else {
  
    
    $(".item_card_big").css('display', 'none');
    $(".item_card").css('display', 'none');
    // $(".item_card_big").removeClass("show");
    // $(".item_card").removeClass("show");
    alert('카드들 display none 처리됨');
    
    
    $('.'+c).addClass("show");
    $('.'+c).css("display","inline-block");
    alert('해당 카테고리에 show처리됨');

      // if ($(".item_card_big").hasClass(c) == true) {
      //   alert('item_card_big hasClass 확인 : '+$(".item_card_big").hasClass(c));
      //   $(this).addClass("show");
      //   //$(".item_card_big").css('display', 'inline-block');

      // }   
      
      // if ($(".item_card").hasClass(c) == true) {
      //   alert('item_card hasClass 확인 : '+$(".item_card_big").hasClass(c));
      //   $(this).addClass("show");

      //   //$(".item_card").css('display', 'inline-block');
      // }   



};  // filterSelection(c) end



$('.btn_search_category').click(function(){

    $('.btn_search_category').removeClass("active");
    $(this).addClass("active");

});