<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 여러개 쿠키를 한번에 넣을 수는 없으므로, 각각 생성해줘야한다. -->
<%
	/* Cookie c = new Cookie("uid","COOL");
	c.setMaxAge(60);
	response.addCookie(c);
	
	Cookie c2 = new Cookie("uname", "유영진");
	response.addCookie(c2); */
	
	response.addCookie(CookieBox.createCookie("uid", "Cool", "/", 60));
	response.addCookie(CookieBox.createCookie("uname", "쿠기"));
		
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 생성</h1>
	<a href="viewCookie.jsp">쿠키 확인</a>
	
</body>
</html>