<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/sessionCheck.jsp" %>

<%
	// incluede는 파일을 가져와서 현재 이 페이지에서 실행하기 때문에
	// 세션체크 파일에 있는 변수 loginInfo를 바로 사용가능
	// 세션 정보 있을 때 마이페이지 출력
	if(loginInfo!=null){
%>

    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>마이페이지</title>
	
	<!-- 실행시점이 컨테이너 내부에서 돌아가는 것이 아니라, 
	브라우저에 로드가 된 후 실행되기 때문에, 
	절대루트에서 콘택스트 경로 실행 후 갈 수 있도록 한다. 
	context 경로를 가져오는 표현식 적용 -->
	<!-- <link rel="stylesheet" href="/op/css/default.css"> -->
	<link rel="stylesheet" href=" <%=request.getContextPath() %>/css/default.css">
	<style>
	</style>
</head>

<body>

	<%-- <%@ include file="../include/header.jsp" %> --%>
	<!-- 파일경로 찾을 때, / 슬래시로 시작하면, 절대경로. 루트가 된다.  -->
	<%@ include file="/include/header.jsp" %>
	
	<div>
		<h1>마이페이지</h1>
	</div>
	
		<hr>
		
		<h3>로그인 회원 정보 </h3>
		
		<table class="table">
			<tr>
				<td>아이디</td>
				<td><%= loginInfo.getUid() %></td>				
			</tr>
			<tr>
				<td>이름</td>
				<td><%--= loginInfo.getUname() --%></td>				
			</tr>
			<tr>
				<td>비밀번호</td>
				<td></td>				
			</tr>
			<tr>
				<td>이메일</td>
				<td><%--= loginInfo.getEmail() --%></td>				
			</tr>
			<tr>
				<td>사진</td>
				<td><%--= loginInfo.getPhoto() --%></td>				
			</tr>
		</table>
		
	</div>



	<%@ include file="/include/footer.jsp" %>
	
	
</body>
</html>

<% } %>