<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



<%	//CookieBox 이용으로 이부분은 삭제 
	
// 쿠키 삭제 : 쿠키객체를 만들고 기간을 0으로 설정.
	// 삭제할 이름설정 후 값은 그냥 공백으로 해도 된다. 어차피 삭제할 것이므로..
	// Cookie cookie = new Cookie("uname","");
	// cookie.setMaxAge(0);
	
	// response.addCookie(cookie);
	response.addCookie(CookieBox.createCookie("uname", "", "/FirstWeb/", 0));
	
	
%>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>쿠키를 삭제합니다.</h1>
	<a href="viewCookie.jsp">쿠키 확인하기</a>
</body>
</html>