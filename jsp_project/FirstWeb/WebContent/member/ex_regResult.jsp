<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리결과</title>
</head>
<body>
	<h1>회원가입 처리결과</h1>
	<h3>request.getParameter() 메서드로 사용자입력정보 가져오기 </h3>
	
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