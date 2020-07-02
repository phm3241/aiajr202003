<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page errorPage="/error/error.jsp" %>
<!-- web.xml에서 등록한 에러페이지보다 위에서 등록한 에러페이지가 우선이다.  
	범용 에러페이지는 web.xml에서 등록하고, 
	특정페이지의 에러페이지의 경우는 위에서 등록. -->
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	name 파라미터 : <%= request.getParameter("name").toUpperCase() %>

</body>
</html>