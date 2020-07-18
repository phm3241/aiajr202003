<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%--@ include file="/WEB-INF/views/include/sessionCheck.jsp" --%>   
    
	<h1 id="header">Open Project</h1>
	<ul id="nav">
	
		<!-- .jsp였던 경로를 .do로 변경.. -->
		<%-- <li><a href="${pageContext.request.contextPath}/member/memberRegForm.jsp">회원가입</a></li> --%>
		<%-- <li><a href="${pageContext.request.contextPath}/member/memberRegForm.do">회원가입</a></li> --%>
		<li><a href="<c:url value="/member/memberRegForm.do"/>">회원가입</a></li>
		
		<c:if test="${!empty login}">
			<li><a href="<c:url value="/member/logout.do"/>">로그아웃</a></li>
		</c:if>
		
		<c:if test="${empty login}">
			<li><a href="<c:url value="/member/loginForm.do"/>">로그인</a></li>
		</c:if>
		
		<li><a href="<c:url value="/member/mypage/mypage.do"/>">마이페이지</a></li>
		<li><a href="<c:url value="/guestbook/list.do"/>">방명록(비회원)</a></li>
		<li><a href="<c:url value="/board/list.do"/>">방명록(회원제)</a></li>
		<li><a href="<c:url value="/member/memberList.do"/>">관리자페이지(회원리스트)</a></li>
		
	</ul>
	
	
	
	
	
	
	