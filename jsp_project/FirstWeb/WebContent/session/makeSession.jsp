<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% 
 	session.setAttribute("username", "Scott");
 %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>세션객체에 속성부여</title>
</head>
<body>
	<h2><a href="sessionView01.jsp">session View</a></h2>
</body>
</html>