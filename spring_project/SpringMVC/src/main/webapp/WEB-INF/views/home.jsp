<%@ page language="java" contentType="text/html; charset=UTR-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h1>
		Spring MVC@
	</h1>
	
	<ul> 
		<!-- 링크를 통한 페이지 이동은 get방식이다.  -->
		
		<li><a href="<c:url value='/hello'/>">/hello</a></li> <!-- 절대경로 -->
		<li><a href="bye">/bye</a></li> <!-- 상대경로 -->
		
		<!-- /mvc/login/login -->
		<li><a href="<c:url value='/login/login'/>">/login/login(GET)</a></li> <!-- 상대경로 -->
	</ul>
	

<P>  The time on the server is ${serverTime}. </P>
</body>
</html>
