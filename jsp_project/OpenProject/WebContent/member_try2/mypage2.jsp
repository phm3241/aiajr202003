<%@page import="model2.LoginInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// 세션정보 받아오기
	LoginInfo mInfo = (LoginInfo) session.getAttribute("login");

		if (mInfo == null) {
%>
				<script>
					alert('사용자 전용 페이지 입니다. \n 로그인 해주세요.');
					location.href = '/op/member_try2/loginForm2.jsp';
				</script>
<%
			};
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

<link rel="stylesheet" href=" <%=request.getContextPath()%>/css/default.css">
<style>
</style>
</head>

<body>

	<%@ include file="/member_try2/include/header2.jsp"%>

	<div>
		<h1>마이페이지</h1>
	</div>

	<h2>
		id :<% if (mInfo != null) { %>
				<%= mInfo.getUid() %>
			<% }; %>	
	</h2>
	<h2>
		pw :<% if (mInfo != null) { %>
				<%= mInfo.getPw() %>
			<% }; %>	
	</h2>


	<a href="logout2.jsp">logout</a>


	<%@ include file="/member_try2/include/footer.jsp"%>





</body>
</html>