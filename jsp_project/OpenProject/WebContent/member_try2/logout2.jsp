<%@page import="model.MemberInfo"%>
<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	session.invalidate();

%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/default.css">

<style>
</style>
</head>
<body>

	<%@ include file="/member_try2/include/header.jsp"%>

	<div>
		<h1>로그아웃되었습니다.</h1>


	</div>

	<%@ include file="include/footer.jsp"%>
</body>
</html>






