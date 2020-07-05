<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%  

	// 아이디 기억하기 기능 : 저장된 쿠키정보 확인 ㅡ> 아이디
	CookieBox cookieBox = new CookieBox(request);
	String cookieUid = cookieBox.getValue("uid");
	
	String uidValue = "";
	String checked = "";
	
	if(cookieUid!=null){
		uidValue = cookieUid;
		checked = "checked";
	}
	

%>



    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인페이지</title>
	
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
	
	<form action="loginResult.jsp" method="post">
			
			
			<!-- REFERER : HTTP(프로토콜)의  헤더값. 브라우저가 서버로 이 헤더값을 설정해서 전송. (이전페이지를 알 수 있음) 
				  이 레퍼러의 가치는 로그 분석이나 접근 제어를 할 때 이용 -->
			<input type="text" name="redirecUri" value="<%= request.getHeader("referer")%>" style=" width : 50% ;" >
		
		
		<table>
			<tr>
				<td>ID</td>
				
				<td>
					<!-- 아이디 기억하기 체크시, 쿠키박스의 저장된 정보로 value값은 해당아이디  -->
					<input type="text" class="login" name="uid" value="<%= uidValue%>"> 
				</td>
			</tr>
			<tr>
				<td>PW</td>
				<td>
					<input type="password" class="login" name="pw"> 
				</td>
			</tr>
			<tr>
				<td></td>
				<td>
					<input type="checkbox" name="remember" value="r" <%= checked %>> 
					아이디 기억하기 
				</td>
			</tr>
			<tr>
				<td>login</td>
				<td>
					<input type="submit" class="login" name="login" value="로그인"> 
				</td>
			</tr>
		</table>
	</form>
	

	<%@ include file="/include/footer.jsp" %>
	
	
	
	
	
</body>
</html>