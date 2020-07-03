<%@page import="model.MemberInfo"%>
<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	// 1. 아이디, 패스워드 받기
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
	
	
	// 2. 아이디, 패스워드 일치확인
	// 같으면 로그인 처리 : session의 속성에 저장
	
	boolean loginChk = false;
	
	if(uid.equals(pw)){
		
		session.setAttribute("memberInfo1", new MemberInfo(uid, pw));
		loginChk = true;	
	} 

%>

<% 
	// 4. 로그인 결과 응답처리 
	if(loginChk){
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

	<%@ include file="/include/header2.jsp"%>

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
			<tr>
				<td><a href="/op/member/mypage/mypage.jsp">My Page</a></td>
				<td><a href="logout_sample2.jsp">logout</a></td>
			</tr>
		</table>



	</div>

	<%@ include file="/include/footer.jsp"%>
</body>
</html>

<% 
	} else {
		
%>
<script>
	alert("아이디 또는 비밀번호를 확인해주세요.");
	histoty.go(-1);
	
</script>

<% 
	}
%>






