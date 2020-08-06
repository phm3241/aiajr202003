<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX</title>

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/default.css">

<style>

</style>
</head>
<body>

	<!-- 20.08.06 -->
	<%@ include file="/WEB-INF/views/include/header.jsp" %>

	<div>
	${member}
	</div>

	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>









