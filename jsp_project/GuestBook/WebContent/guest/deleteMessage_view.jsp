<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과페이지 : 글삭제</title>
</head>
<body>
	
	<c:if test="${resultCode == 1}">
		<h1>메시지가 삭제되었습니다.</h1>
	</c:if>
	<c:if test="${resultCode == -1}">
		<h1>삭제할 메시지가 존재하지 않습니다.</h1>
	</c:if>
	<c:if test="${resultCode == -2}">
		<h1>비밀번호가 일치하지 않습니다.</h1>
	</c:if>

	<a href="list.jsp">리스트보기</a>


</body>
</html>