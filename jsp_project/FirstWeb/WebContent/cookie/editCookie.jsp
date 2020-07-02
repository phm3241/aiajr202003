<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 쿠키정보 배열로 받기
	Cookie[] cookies = request.getCookies();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 정보 수정</h1>
	
	<%
		// 쿠키정보 수정는 새로운 객체 생성에서 덮어쓰면 된다. 
		Cookie cookie = new Cookie("uid","hot");
		cookie.setPath("/web/");
		response.addCookie(cookie);
	%>
	
	<a href="viewCookie.jsp">쿠키값 확인하기</a>
	
	
	
</body>
</html>






