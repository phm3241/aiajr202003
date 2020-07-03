<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String uid = request.getParameter("uid");
	String pw = request.getParameter("pw");
	String chk = request.getParameter("remember"); 
	
	String cookieName = "uid";
	String cookiePath = request.getContextPath();
	
	
	// 체크가 null이 아니라면, 위에서 받아온 데이터 쿠키객체 생성 ㅡ> 쿠키박스에 저장하기
	// 체크가 null이면, 새로운 쿠키생성 x, 기존에 있으면 삭제된다. 
	if(chk !=null){
		response.addCookie(CookieBox.createCookie(cookieName, uid, cookiePath, 60*60*24*365));
	} else {
		response.addCookie(CookieBox.createCookie(cookieName, uid, cookiePath, 0));
		
	}

	
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 처리</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/default.css">

<style>
</style>
</head>
<body>

	<%@ include file="/include/header.jsp"%>

	<div>
		<h1>로그인</h1>
		
		<hr>

		<table>
			<tr>
				<td>ID</td>
				<td> <%= uid %></td>
			</tr>
			<tr>
				<td>PW</td>
				<td> <%= pw %> </td>
			</tr>
			<tr>
				<td></td>
				<td> 
					<%
						if(chk!=null){
							out.println("아이디를 저장합니다.");
						} else {
							out.println("아이디를 저장하지 않습니다.");
						}
					%>
				</td>
			</tr>
		</table>



	</div>

	<%@ include file="/include/footer.jsp"%>
</body>
</html>