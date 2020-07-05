<%@page import="model2.LoginInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	LoginInfo mInfo = (LoginInfo)session.getAttribute("login");

	if(mInfo == null) {
		%>
		<script>
			alert('회원전용 게시판 입니다. 로그인 후 사용해 주세요.')
			location.href='/op/member_try2/loginForm2.jsp';
		</script> 
		<%
	}

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 게시판</title>

<link rel="stylesheet" 	href="<%=request.getContextPath()%>/css/default.css">

</head>
<body>

	<%@ include file="/member_try2/include/header2.jsp"%>
	<h1> 회원 게시판 </h1>
	<table border="1">
		<tr>
			<td>번호</td>		
			<td>글제목</td>		
			<td>작성자</td>		
			<td>작성일</td>		
			<td>조회수</td>		
		</tr>
		<tr>
			<td>번호</td>		
			<td>글제목</td>		
			<td>작성자</td>		
			<td>작성일</td>		
			<td>조회수</td>		
		</tr>
		<tr>
			<td>번호</td>		
			<td>글제목</td>		
			<td>작성자</td>		
			<td>작성일</td>		
			<td>조회수</td>		
		</tr>
	</table>
	
	<%@ include file="/member_try2/include/footer.jsp"%>
</body>
</html>