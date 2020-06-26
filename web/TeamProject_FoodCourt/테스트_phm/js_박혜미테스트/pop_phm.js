$(document).ready(function() {
    $('.trigger').click(function() {
       $('#overlay').fadeIn(300);
    });
 
    $('#close').click(function() {
       $('#overlay').fadeOut(300);
       $('.side_menu_btn').removeClass('select_border');
    });


   // 메뉴선택시, 사이드창에 선택메뉴의 이미지로 변경
   $('.menu_btn').click(function(){

      var img = $(this).find('img').attr('src');
      // alert(img);

      $('#select_menu_img>img').attr('src', img);

      var name = $(this).find('h3').text();
      $('#menu_info>h2').text(name);

      var price = $(this).find('p').text();
      $('.select_menu_price').text(price);

   });






   //  (팝업-사이드창) 
   // 사이드메뉴 선택시 속성추가
   $('.side_menu_btn').click(function() {
      if($(this).hasClass('select_border')){  
         $(this).removeClass('select_border');
         console.log(true);
      }else{
         $(this).addClass('select_border');
         console.log(false);
         
      }


   });



   //  (팝업-사이드창) 
   // 사이드메뉴 선택 후 ㅡ> 확인버튼 클릭시 ㅡ> 속성삭제
   $('#side_ok').click(function() {
      $('.side_menu_btn').removeClass('select_border');
   });







   var menu = {};

   // 사이드창 선택사항 - 객체로
   $('.menu_btn').click(function(){
      
      
      var name = $(this).find('h3').text();
      var price = $(this).find('p').text();


      menu = {
         sname:name,
         sprice:price,
      }

     

      

   });



   var sidemenu = {};
   var sidemenuArr = [];

   // 사이드메뉴 선택. (여러개 선택시?)
   $('.side_menu_btn').click(function(){

      var amount = $('#select_count').find('input').val();

      // 만약에, 선택되어있다면, 
      if($(this).hasClass('select_border')){
      
         var sidename = $(this).find('h3').text();

         var sideprice = $(this).find('p').text();
         var price1 = sideprice.replace(',','');
         sideprice = parseInt(price1);

      } else {
         sidename=0;
         sideprice=0;
      } 

      sidemenu = {
         samount:amount,
         side_name:sidename,
         side_price:sideprice
      }

      sidemenuArr.push(sidemenu);
      
      menu.side=sidemenuArr;
      alert(menu.sname);
      alert(menu.side[1].side_name);


      
   });
   
   var order = $('#side_ok').click(function(){
      return menu;
   });



   });


 
 




 