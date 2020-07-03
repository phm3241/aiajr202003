<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	String uid = request.getParameter("uid");
	String pw = request.getParameter("pw");
	String chk = request.getParameter("remember");
%>



    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	
	<!-- 실행시점이 컨테이너 내부에서 돌아가는 것이 아니라, 
	브라우저에 로드가 된 후 실행되기 때문에, 
	절대루트에서 콘택스트 경로 실행 후 갈 수 있도록 한다. 
	context 경로를 가져오는 표현식 적용 -->
	<!-- <link rel="stylesheet" href="/op/css/default.css"> -->
	<link rel="stylesheet" href=" <%=request.getContextPath() %>/css/default.css">
	</style>
</head>

<body>

	<%-- <%@ include file="../include/header.jsp" %> --%>
	<!-- 파일경로 찾을 때, / 슬래시로 시작하면, 절대경로. 루트가 된다.  -->
	<%@ include file="/include/header.jsp" %>
	
	<div>
		<h1>로그인</h1>
	</div>
	
	<form action="memberLoginForm.html" method="post">
		<table>
			<tr>
				<td>ID</td>
				<td><input type="text" class="login" name="uid"> </td>
			</tr>
			<tr>
				<td>PW</td>
				<td><input type="password" class="login" name="pw"> </td>
			</tr>
			<tr>
				<td>아이디 기억하기</td>
				<td><input type="checkbox" name="remember" value="r"> </td>
			</tr>
			<tr>
				<td>login</td>
				<td><input type="submit" class="login" name="login"> </td>
			</tr>
		</table>
	</form>
	

	<%@ include file="/include/footer.jsp" %>
	
	
	
	
	
</body>
</html>