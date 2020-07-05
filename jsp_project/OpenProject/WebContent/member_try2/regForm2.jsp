<%@page import="util.CookieBox"%>
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
<title>회원가입 페이지</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/default.css">

<style>
</style>
</head>
<body>

	<%@ include file="/member_try2/include/header.jsp"%>

	<div>
		<h1 class="subtitle">회원가입</h1>

		<hr>

		<form action="regResult2.jsp" method="post">

			<table class="table">
				<tr>
					<td>ID</td>
					<td><input type="text" name="id" required></td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="pw" required></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="uname" required></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="등록 "><input type="reset">
					</td>
				</tr>
			</table>

		</form>


	</div>

	<%@ include file="/member_try2/include/footer.jsp"%>
</body>
</html>