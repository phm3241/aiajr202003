<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regResult2</title>
</head>
<body>

	<h2> [ 회 원 가 입 _ 처 리 결 과] </h2>
	<table>
		<tr>
			<td> 아이디 </td>
			<td> <%= request.getParameter("id") %> </td>
		</tr>
		<tr>
			<td> 비번 </td>
			<td> <%= request.getParameter("pw") %> </td>
		</tr>
		<tr>
			<td> 이름 </td>
			<td> <%= request.getParameter("uname") %> </td>
		</tr>
		<tr>
			<td> 사진 </td>
			<td> <%= request.getParameter("uphoto") %> </td>
		</tr>
		<tr>
			<td> 요청메서드 </td>
			<td> <%= request.getMethod() %> </td>
		</tr>
		<tr>
			<td> 쿠키정보 </td>
			<td> 
				<% 
				Cookie[] cookies = request.getCookies(); 
				for(int i=0; i<cookies.length; i++){
					out.println(cookies[i].getName()+"="+cookies[i].getValue());
				}
				%> 
			</td>
		</tr>
		<tr>
			<td> 요청정보 </td>
			<td> 
				<%= request.getProtocol() %> <br>
				<%= request.getRequestURL() %> <br>
				<%= request.getRequestURI() %> 
			</td>
		</tr>
	</table>

</body>
</html>