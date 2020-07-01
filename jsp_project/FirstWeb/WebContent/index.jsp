<%@ page import="java.util.Date"%>
<%@ page language="java" 
		 contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8"%>
    	 
 <% 
 	String userName = (String)session.getAttribute("username");
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Insert title here</title>
</head>
<body>
	<h1>안녕하세요</h1>
	
	<% 
		// 스크립트릿 영역 : java 코드 작성. 
		// 앞으로는 아래 표현사용하지 않고,  별도 class로 구현
		Date now = new Date();	
	%>
	
	
	
	<!-- 표현식 : 결과 Data만 출력, 변수에 있는 데이터 그대로 출력
	아래 표현말고, EL 표현언어로 표현한다.  -->
	<%= now %>
	
	현재 접속중인 사용자의 이름 : <%= userName %>
	
	<!-- 속성의 이름이 하나만 유지되고, 뒤에 있는 값으로 덮어씌워진다. -->
	<% session.setAttribute("username", "KING"); %>
	<br>
	
	<a href="session/sessionView01.jsp">session view</a>

</body>
</html>