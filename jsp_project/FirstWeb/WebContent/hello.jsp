<!-- 디렉티브 영역 -->
<%@ page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 여기있는 사용자의 브라우저에서 실행되는 것. 여기서 실행되는 것X  -->
<!-- JSP는 클라이언트에서 실행할 수 있는 html을 만들어주는 역할 -->
<!-- 요청이 들어오면, 컨테이너는 hello_jsp.class를 찾는다. 있으면 바로 실행되고, 
	 없으면 hello_jsp.java로 만들어지고, 컴파일해서hello_jsp.class로 만들어지고 실행된다.  
	 jsp파일은 우리가 컴파일 하는게 아니고, 컨테이너가 컴파일 해준다. 따라서 브라우저에서 바로 실행이 가능하다.  
	 브라우저에서 바로 F5로 수정결과 확인가능하다.
	 서블릿은 서버를 다시 리스타트하고 수정결과를 확인해야한다? -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서블릿 테스트</title>
</head>
<body>
	<h1>안녕하세요 JSP로 응답 페이지를 생성했습니다.</h1>
	
	<% 
		Date now = new Date();
		String message = "Hello~!!";
	%>
	
	<p>현재 시간은 : <%= now %> </p>
	<!-- now는 tostring 되어 현재시간이 출력된다.  -->
	<h3><%= message %></h3>

</body>
</html>