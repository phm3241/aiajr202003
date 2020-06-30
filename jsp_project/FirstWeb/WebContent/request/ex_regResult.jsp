<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 전송결과</h1>
	
	<table border="1">
		<tr>
			<td>인증방법</td>
			<td> <%= request.getParameter("select") %> </td>
		</tr>
		<tr>
			<td>이름</td>
			<td> <%= request.getParameter("uname") %></td>
		</tr>
		<tr>
			<td>주민등록번호</td>
			<td> 
				<%= request.getParameter("regNum01") %> -
				<%= request.getParameter("regNum02") %> 
			</td>
		</tr>
		<tr>
			<td>주민등록번호 처리 동의</td>
			<td> 
				<%= request.getParameter("agree") %> 
			</td>
		</tr>
		
		
	</table>

</body>
</html>