<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%--@ include file="/WEB-INF/views/include/sessionCheck.jsp" --%>   
    
	<h1 id="header"><a href="<c:url value="/"/>">Open Project</a></h1>
	<ul id="nav">
	
		<li><a href="<c:url value="/reg/register"/>">회원가입</a></li>
		
		<c:if test="${!empty login}">
			<li><a href="<c:url value="/login/logout"/>">로그아웃</a></li>
		</c:if>
		
		<c:if test="${empty login}">
			<li><a href="<c:url value='/login/login'/>">로그인(GET)</a></li>
		</c:if>
		
		<li><a href="<c:url value="/member/mypage/mypage.do"/>">마이페이지</a></li>
		<li><a href="<c:url value="/guestbook/list.do"/>">방명록(비회원)</a></li>
		<li><a href="<c:url value="/board/list.do"/>">방명록(회원제)</a></li>
		<li><a href="<c:url value="/member/memberList.do"/>">관리자페이지(회원리스트)</a></li>
		
	</ul>
	
	
	
	<%-- 
	<ul>
		<!-- 링크를 통한 페이지 이동은 get방식이다.  -->

		<li><a href="<c:url value='/hello'/>">/hello</a></li>
		<!-- 절대경로 -->
		<li><a href="bye">/bye</a></li>
		<!-- 상대경로 -->

		<!-- /mvc/login/login -->
		<li><a href="<c:url value='/login/login'/>">/login/login(GET)</a></li>
		<!-- 상대경로 -->


		<li><a href="<c:url value='/search'/>">/search</a></li>
		<li><a href="<c:url value='/search/searchForm'/>">/searchForm</a></li>

		<li><a href="<c:url value='/order/order'/>">/order/order</a></li>

		<li><a href="<c:url value='/cookie/makeCookie'/>">/cookie/makeCookie</a></li>
		<li><a href="<c:url value='/cookie/viewCookie'/>">/cookie/viewCookie</a></li>

		<li><a href="<c:url value='/header/getHeader'/>">/header/getHeader</a></li>

		<li><a href="<c:url value='/report/reportForm'/>">/report/reportForm</a></li>
	</ul>
	
	 --%>
	
	
	
	