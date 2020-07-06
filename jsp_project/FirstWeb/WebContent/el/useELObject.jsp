<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setAttribute("name", "손흥민");
	request.setAttribute("age", 10);

%>   
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>

	<h1> ${10+3}, ${10 div 3}, ${10 mod 3}</h1>
	<h1> ${10==1}, ${10 eq 1}, ${10 ne 1}, ${10 lt 1}, ${10 gt 1}</h1>
	<h1> ${10 ne 1 ? '같지않다' : '같다'}</h1>
	<h1> ${name eq '손흥민' }</h1>
	<h1> ${name eq '손흥민' ? 'Top Class' : 'Other Player'}</h1>
	<h1> ${age>19 ? '입장가능' : '입장불가'}</h1>
	
	
	
	<!-- EL 표현식으로 변경 -->
	<!-- 변수호출이 아니라,   .get변수이름   으로 메서드 호출하는 것이다. 
	 pageContext.getRequest(); 와 같은 코드이다. -->
	<h1>요청 URI <%= request.getRequestURI() %></h1>
	<h1>요청 URI ${pageContext.request.requestURI} </h1>
	
	
	<!-- EL 표현식으로 변경 -->
	<h1>request 속성에 저장된 name: <%= request.getAttribute("name") %></h1>
	<h1>request 속성에 저장된 name: ${requestScope.name} </h1>
	<h1>request 속성에 저장된 name: ${name} </h1>
	<!-- 속성의 이름만 쓰는 경우 ! (영역생략가능)
		 pageScope, requestScope, sessionScope, applicationScope 순서로
		 (가장범위가 작은 영역순..생명주기가 짧은 순..) 속성의 이름을 찾는다.  
		 따라서 가급적이면 속성의 이름이 중복되지 않도록 하는 것이 좋다. -->
	
	
	<!-- EL 표현식으로 변경 -->
	<h1>파라미터 code의 값 : <%= request.getParameter("code") %></h1>
	<!-- 결과출력 : 파라미터 code의 값 : null  (null값 표현) -->
	<h1>파라미터 code의 값 : ${param.code}</h1>
	<!-- 결과출력 : 파라미터 code의 값 :       (null값 표현X) -->
	
	
	
	<h1>JSESSIONID 쿠키값 : ${cookie.JSESSIONID.value}</h1>








</body>
</html>





