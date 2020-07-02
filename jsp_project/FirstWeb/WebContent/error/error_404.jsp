<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isErrorPage="true" %>

    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>error_404</title>
</head>
<body>
	<h1> 잘못된 요청입니다. 경로를 다시 확인하시고 요청해주세요. </h1>
	<!-- 어디에서 오류가 발생할 지 모르므로, 절대경로로 작성 -->
	<a href="<%= request.getContextPath()%>/index.jsp">홈으로 가기</a>
	
</body>
</html>