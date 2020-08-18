<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="../css/buy.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
	    <div id="container">

        <div id="nav">
            <a href="#">홈</a>
            <a href="#">로그아웃</a>
            <a href="#">ㅇㅇ</a>
        </div>

        <div id="main_content_area">
            <div class="title_area">
                <h1 id="main_title">  W 1 F 1  </h1>
            </div>
            <div id="itemlist_area">
                <div id="itemlist_big_area">
                    <div class="item_card_big">
                        <img class="item_img_big" src="../img/사과.jpg">
                        <div class="item_info">
                            <h3 class="item_title"><a href="#">오늘! 사과 3개씩 나눠사실 분</a></h3>
                            <span class="seller_name">홍길동</span>
                            <span class="seller_rating">★★★★<span>☆</span></span><br>
                            <span class="item_price">5000원</span>
                            <span class="item_limitDate">당일마감</span>
                        </div>
                    </div>
                    <div class="item_card_big">
                        <img class="item_img_big" src="../img/복숭아.jpg">
                        <div class="item_info">
                            <h3 class="item_title"><a href="#">오늘! 사과 3개씩 나눠사실 분</a></h3>
                            <span class="seller_name">홍길동</span>
                            <span class="seller_rating">★★★★<span>☆</span></span><br>
                            <span class="item_price">5000원</span>
                            <span class="item_limitDate">당일마감</span>
                        </div>
                    </div>
                </div>
                <div id="itemlist_small_area">
                    <div class="item_card">
                        <img class="item_img" src="../img/수박.jpg">
                        <div class="item_info">
                            <h3 class="item_title"><a href="#">오늘! 사과 3개씩 나눠사실 분</a></h3>
                            <span class="seller_name">홍길동</span>
                            <span class="seller_rating">★★★★<span>☆</span></span><br>
                            <span class="item_price">5000원</span>
                            <span class="item_limitDate">당일마감</span>
                        </div>
                    </div>
                    <div class="item_card">
                        <img class="item_img" src="../img/사과.jpg">
                        <div class="item_info">
                            <h3 class="item_title"><a href="#">오늘! 사과 3개씩 나눠사실 분</a></h3>
                            <span class="seller_name">홍길동</span>
                            <span class="seller_rating">★★★★<span>☆</span></span><br>
                            <span class="item_price">5000원</span>
                            <span class="item_limitDate">당일마감</span>
                        </div>
                    </div>
                    <div class="item_card">
                        <img class="item_img" src="../img/멜론.jpg">
                        <div class="item_info">
                            <h3 class="item_title"><a href="#">오늘! 사과 3개씩 나눠사실 분</a></h3>
                            <span class="seller_name">홍길동</span>
                            <span class="seller_rating">★★★★<span>☆</span></span><br>
                            <span class="item_price">5000원</span>
                            <span class="item_limitDate">당일마감</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>  <!-- main_content_area end -->
        

        <div class="aside_area">
            <div class="aside_title_area">
                <h1 id="aside_main_title">공구참여현황 | 공구판매현황</h1>
            </div>
            <div id="aside_mylist">
                <div class="aside_mycard">
                    <h4 class="aside_mystate waiting">참여중</h4>
                    <a href="#" class="aside_item_title">공구제목_수박가치사기</a>
                    <input type="submit" class="aside_button" value="참여취소">
                </div>
                <div class="aside_mycard">
                    <h4 class="aside_mystate buyer">구매자</h4>
                    <a href="#" class="aside_item_title">공구제목_수박가치사기</a>
                    <input type="submit" class="aside_button" value="QR코드">
                </div>
                <div class="aside_mycard">
                    <h4 class="aside_mystate reject">다음기회에...</h4>
                    <a href="#" class="aside_item_title">공구제목_수박가치사기</a>
                    <input type="submit" class="aside_button" value="확인">
                </div>
                <div class="aside_mycard">
                    <h4 class="aside_mystate purchase ">구매완료</h4>
                    <a href="#" class="aside_item_title">공구제목_수박가치사기</a>
                    <input type="submit" class="aside_button" value="판매자 평점등록">
                </div>
                <div class="aside_mycard">
                    <h4 class="aside_mystate fail">구매실패</h4>
                    <a href="#" class="aside_item_title">공구제목_수박가치사기</a>
                    <input type="submit" class="aside_button" value="확인">
                </div>
            </div>
        </div> <!-- aside_area end -->

    </div> <!-- container end -->
</body>
</html>