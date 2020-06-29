<!-- jsp "디렉티브 영역" : 설정들을 이쪽에서 해준다. 
	 pageEncoding 응답, 만들어내야하는 코드의 인코딩
	 , contentType(응답) : text/xml, json으로 변경가능. 
	 아래에 있는 html 코드들은 jsp입장에서는 텍스트일 뿐이다. -->
<!-- jsp쓰는 이유는 동적으로 페이지를 만들어준다. -->
<%@ page import="java.util.Date"%>
<%@ page language="java" 
		 contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8"%>
    
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
	아래 표현말고, EL 표현언어로 ${} 로 표현한다.  -->
	<%= now %>

</body>
</html>