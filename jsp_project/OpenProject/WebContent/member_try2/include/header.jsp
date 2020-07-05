<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <h1 id="header"><a href="index2.jsp" >Open Project</a></h1>
	<ul id="nav">
		<li><a href="<%= request.getContextPath() %>/member_try2/regForm2.jsp">회원가입</a></li>
		<li><a href="<%= request.getContextPath() %>/member_try2/loginForm2.jsp">로그인</a></li>
		<li><a href="<%= request.getContextPath() %>/member_try2/mypage2.jsp">마이페이지</a></li>
		<li><a href="<%= request.getContextPath() %>/member_try2/guestbook/list.jsp">방명록(비회원)</a></li>
		<li><a href="<%= request.getContextPath() %>/member_try2/board/list.jsp">방명록(회원제)</a></li>
	</ul>