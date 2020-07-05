<%@page import="model2.LoginInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!-- 세션정보 받아와서 로그인유무 확인하는 공통된 코드 
	   ㅡ> 별도 jsp파일로 작성 후, include 로  파일불러오는 구조로 변경     -->
<%
	// 세션정보 받아오기
	LoginInfo loginInfo = (LoginInfo)session.getAttribute("login");
	
	// 세션정보 없으면, 알림후 로그인페이지로 이동
	if(loginInfo==null){
		// response.sendRedirect("loginForm.jsp"); 
		%>
			<script>
				alert('로그인이 필요한 페이지입니다. 로그인 후 이용해주세요.');
				location.href='/op/member/loginForm.jsp';
			</script>
		<%
	};
%>