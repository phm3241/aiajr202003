<%@page import="com.open.mvc.member.model.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 저장된 쿠기 확인하기
	/* CookieBox cookieBox = new CookieBox(request);

	String cookieUid = cookieBox.getValue("uid");
	
	String uidValue = "";
	String checked = "";
	
	if(cookieUid != null){
		uidValue = cookieUid;
		checked = "checked";
	} */

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/default.css">

<style>
</style>
</head>
<body>

	<%@ include file="/WEB-INF/views/include/header.jsp"%>

	<div>
		<h1 class="subtitle">로그인</h1>
		
		<hr>
		
		<form action="login.do" method="post">
		
			<table class="table">
				<tr>
					<td></td>
					<td> <input type="checkbox" name="idchk" id="idchk"> </td>
				</tr>
				<tr>
					<td> ID </td>
					<td> <input type="text" name="uid" value="${uidValue}"> </td>
				</tr>
				<tr>
					<td> PW </td>
					<td> <input type="password" name="upw"> </td>
				</tr>				
				<tr>
					<td></td>
					<td> <input type="checkbox" name="remember" value="r"  ${checked} > 아이디 기억하기  </td>
				</tr>
				<tr>
					<td colspan="2"> <input type="submit" value="로그인"> </td>
				</tr>
			</table>
		
		</form>
		
		
	</div>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>