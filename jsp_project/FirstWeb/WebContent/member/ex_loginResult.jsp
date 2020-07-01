<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  request.setCharacterEncoding("utf-8"); %>

    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>loginResult</title>
	<style>
		.title {
			background-color: black;
			color: white;
		}
		
		table {
			text-align: center;
			border: 1px solid gray;
			margin: 0 auto;
		}
		
		td {
			border: 1px solid gray;
			padding: 10px;
		}
		
		h2 {
			text-align: center;
			padding-top: 20px;
			padding-bottom: 20px;
		}
	</style>
</head>

<body>
	<h2> [ 로그인 전송결과 ] </h2>
	<table>
		<tr class="title">
			<td>아이디</td>
			<td>비밀번호</td>
			<td>요청메서드</td>
			<td>쿠키 정보</td>
			<td>요청 정보</td>
		</tr>
		<tr>
			<td> <%= request.getParameter("id") %> </td>
			<td> <%= request.getParameter("pw") %> </td>
			<td> <%= request.getMethod() %> </td>
			<td> 
				<% 
					Cookie[] cookies = request.getCookies(); 
					for(int i=0; i<cookies.length; i++){
						out.println(cookies[i].getName()+"="+cookies[i].getValue());
					}
				%>
			</td>
			<td> 
				<%= request.getProtocol() %> <br>
				<%= request.getRequestURL() %> <br>
				<%= request.getRequestURI() %>
			</td>
		</tr>
	
	</table>

</body>
</html>