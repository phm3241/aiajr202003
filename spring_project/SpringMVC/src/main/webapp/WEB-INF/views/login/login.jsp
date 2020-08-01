<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>로그인 처리</h1>
	
		<table>
			<tr>
				<td>아이디</td>
				<%-- <td>${loginRequest.uid}</td> --%>
				<!-- @ModelAttribute("login") 이렇게 이름을 바꿔서 저장해주었기 때문에 -->
				<td>${login.uid}</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<%-- <td>${login.upw}</td> --%>
				<td>${loginRequest.upw}</td>
			</tr>
		</table>
</body>
</html>