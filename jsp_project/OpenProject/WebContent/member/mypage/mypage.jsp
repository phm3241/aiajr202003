<%@page import="model.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 세션정보 받아오기
	MemberInfo mInfo = (MemberInfo)session.getAttribute("memberInfo1");
	
	if(mInfo==null){
		// response.sendRedirect("memberLoginForm_sample2.jsp");
		%>
			<script>
			alert('사용자 전용 페이지 입니다. \n 로그인 해주세요.');
			location.href='sessionLoginForm.jsp';
			</script>
		<%
	};
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
	
	<h2> id : <%= mInfo.getUid() %></h2>
	<h2> pw : <%= mInfo.getPw() %></h2>
	<a href="logout.jsp">logout</a>


	<%@ include file="/include/footer.jsp" %>
	
	
	
	
	
</body>
</html>