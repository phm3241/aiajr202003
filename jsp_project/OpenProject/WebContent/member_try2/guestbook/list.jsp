<%@page import="model.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	MemberInfo mInfo = (MemberInfo)session.getAttribute("memberInfo1");

	if(mInfo != null) {
		%>
		<script>
			alert('비회원전용 방명록 입니다. 회원 방명록을 이용해주세요')
			location.href='/op/member_try2/board/list.jsp';
		</script> 
		<%
	}

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>방명록</title>

<link rel="stylesheet" 	href="<%=request.getContextPath()%>/css/default.css">

</head>
<body>

	<%@ include file="/member_try2/include/header.jsp"%>
	<h1> 방명록 </h1>
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