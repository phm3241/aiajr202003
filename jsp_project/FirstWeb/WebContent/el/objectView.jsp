<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>교재 리스트</h1>
		<ul>
		
			<!-- 표현언어(el)의 배열참조 -->
			<!-- 속성의 이름만 쓰는 경우 ! (영역생략가능)
			 pageScope, requestScope, sessionScope, applicationScope 순서로
			 (가장범위가 작은 영역순..생명주기가 짧은 순..) 속성의 이름을 찾는다.  
			 따라서 가급적이면 속성의 이름이 중복되지 않도록 하는 것이 좋다. -->
			<li>${requestScope.bookNames[0]}</li>
			<li>${requestScope.bookNames[1]}</li>
			<li>${bookNames[2]}</li>
		</ul>
	
	<h1>학습 순서 (List)</h1>
		<ol>
			<li>${requestScope.study[0]}</li>
			<li>${requestScope.study[1]}</li>
			<li>${study[2]}</li>
			<li>${study[3]}</li>
		</ol>
		
	<h1>학생 정보 (Map)</h1>
		<ul>
			<li>전공 : ${requestScope.student.dept}</li>
			<li>이름 : ${student.name}</li>
			<li>전화번호 : ${student.phoneNumber}</li>
		</ul>
	
	
</body>
</html>







