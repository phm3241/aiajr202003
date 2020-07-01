<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>안녕하세요. pagecontrol 페이지 입니다.</h1>
	<h3>페이지 이동 2가지 방법 차이점 : response.sendRedirect / jsp:forward page </h3>
	<p> forward 액션은 최종적으로 전달되는 페이지에 파라미터(HTML 폼 입력값 등)를 함께 전달함. <br>
		브라우저 URL에 최초 요청된 페이지 URL이 나타남<br><br>
		sendRedirect() 는 단순히 지정된 페이지로 최종 화면이 이동되고, <br>
		최종 전달된 페이지의 URL이 표시됨. 
	</p>
	
	
	<%
		response.sendRedirect("../hello.jsp");
	%>
	<!-- sendRedirect로 페이지 이동하면, pagecontrol 응답을 한 후, /hello.jsp로 이동하고,
	주소표시줄이 	http://localhost:8080/web/hello.jsp -->




	<%-- <jsp:forward page="../hello.jsp"/> --%>
	<!--forward는 결과를 바꿔준다. 특정페이지로 이동하지만, 주소표시줄이 변경되지 않는다.  
	http://localhost:8080/web/response/pagecontrol.jsp -->
	
	
	
	
	
</body>
</html>