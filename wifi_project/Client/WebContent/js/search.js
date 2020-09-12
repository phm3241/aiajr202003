//var domain = "http://ec2-54-180-98-41.ap-northeast-2.compute.amazonaws.com:8080/Buy_v1/";
//var domain = "http://localhost:8080/order/";
var domain = "http://localhost:8080/order";

var loginMidx = 1;


/***** search ********************************************************************************************/

/* 카테고리 정렬 */
function filterSelection(c) {

  var recomItem; 
  var item;

  recomItem = $(".item_card_big");
  item = $(".item_card");
  if (c != "category0");

  for (var i = 0; i<recomItem.length; i++) {
    
    if (recomItem[i].hasClass(c) == true) {
        recomItem[i].addClass("show");
    } else {
        recomItem[i].removeClass("show");
    }   
  }

  for (var i = 0; i<item.length; i++) {
    if (item[i].hasClass(c) == true) {
        item[i].addClass("show");
    } else {
        item[i].removeClass("show");
    }   
  }

};  // filterSelection(c) end



$('.btn_search_category').click(function(){

    $(".active").removeClass();
    $(this).addClass("active");

});