<%@page import="model2.MemberInfo"%>
<%@page import="util.CookieBox"%>
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
<jsp:useBean id="memberInfo" class="model2.MemberInfo"
	scope="application" />

<!-- html의 name값과 bean class의 변수명을 동일하게 해주면, getter, setter를 이용하여 자동으로 수정해준다?
나중에는 스프링을 사용하므로, action tag는 사용하지 않지만, beans class는 vo, dto의 개념으로 사용된다?  -->
<jsp:setProperty property="*" name="memberInfo" />




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리</title>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/default.css">

<style>
</style>
</head>
<body>

	<%@ include file="/member_try2/include/header.jsp"%>

	<div>
		<h1>
			반갑습니다,
			<%=memberInfo.getId()%>
			님,
		</h1>
		<h2>회원등록이 정상적으로 처리되었습니다.</h2>
		<h3>로그인 후 이용해주세요.</h3>

	</div>

	<%@ include file="/member_try2/include/footer.jsp"%>
</body>
</html>







