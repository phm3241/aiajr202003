<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<title>kakaoLogin</title>

<link rel="stylesheet" href="/css/comment.css" type="text/css">
<link rel="stylesheet" href="/css/aside.css" type="text/css">
<link rel="stylesheet" href="/css/buy.css" type="text/css">
<link rel="stylesheet" href="/css/slide.css" type="text/css">
<link rel="stylesheet" href="/css/swiper.css" type="text/css">
<link rel="stylesheet" href="/css/swiper.min.css" type="text/css">
<link rel="stylesheet" href="/css/swiper.min.css" type="text/css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>

	
	

	<!-- 댓글 리스트 -->
	<div>
		<div>
			<div>작성자</div>
			<div>댓글내용</div>
			<a>수정</a> <a>삭제</a>
			<div>등록시간</div>
		</div>
	</div>



	<div class="commentlistWrap">
		<h1>--- Comments ---</h1>



		<!-- Comments List -->
		<div class="commentlist">

			<div class="comment_card">
				
				<!-- 이미지 -->
				<div class="comment_imgWrap">
					<img src="">
				</div>

				<!-- Comment Box -->
				<div class="comment_box">
					<div class="comment_text">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit. Iusto temporibus iste nostrum
						dolorem natus recusandae incidunt voluptatum.</div>
					<div class="comment_footer">
						<div class="comment_info">
							<span class="comment_author"> 
								<a href="mailto:sexar@pagelab.io">Sexar</a>
							</span> 
							<span class="comment_date">Feb 2, 2013 11:32:04 PM</span>
						</div>

						<div class="comment_actions">
							<a href="#">수정</a>
							<a href="#">삭제</a>
							<a href="#">Reply</a>
						</div>
					</div>
				</div>

			</div>

		</div> <!-- commentlist  end -->

		
		<!--  댓글 등록 From -->
		<div class="comment_formWrap">
			<div class="comment_imgWrap">
				<img src="http://lorempixel.com/200/200/people">
			</div>
			<form class="comment_form" name="comment_form" onsubmit="return false;">
				<div class="formRow">
					<textarea class="comment_content" placeholder="Add comment..." required></textarea>
				</div>
				<div class="formRow">
					<!-- <input type="text" class="comment_mname" placeholder="작성자"> -->
					<input type="text" class="comment_midx" value="2">
				</div>
				<div class="formRow">
					<input type="submit" value="Add Comment" class="btn_regComment" onclick="regComment(5)">
				</div>
			</form>
		</div>  <!-- comment_formWrap  end -->




	</div> <!-- comments_area end -->





	<script src="/js/comment.js"></script>


</body>
</html>