<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
useBean은 객체 생성하는 액션태그. 
(useBean 액션태그가 LoginInfo 클래스의 생성자를 통해 객체를 만든다.)
class : 컴포넌트가 useBean을 만나면, class 정보를 가지고 객체생성을 해준다.
id : 식별자. 객체생성을 했으니 식별할 수 있는 이름 (속성의 이름이 된다.)
scope :  page, request, session, application - 속성을 사용할 수 있는 객체들의 속성에 저장하게 된다? 
객체의 속성에 객체가 이미 있다면, 새롭게 생성하는 것이 아니라, 기존의 객체를 가져다 쓴다. 
-->
<jsp:useBean id="memberInfo" class="model.MemberInfo" scope="page"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%= memberInfo %></h1>

</body>
</html>