<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	// "getAttribute 메서드가 반환하는 것은 Object이므로, 형변환이 필요
	String userName = (String) session.getAttribute("username");
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>
		session의 속성으로 저장한 데이터 <br>
		username : <%= userName %> <br>
		<a href="../index.jsp">다른 페이지</a>
		<a href="logout.jsp">로그아웃</a>
	</h1>

</body>
</html>