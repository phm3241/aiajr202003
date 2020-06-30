<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<footer>

	<!-- 사용자입력데이터를 getParameter 메서드로 받는데, "String(문자열)" 형식이다. -->
	email : <%= request.getParameter("email") %>
	<br>
	tell : <%= request.getParameter("tell") %>
</footer>