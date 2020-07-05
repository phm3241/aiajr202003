<%@page import="util.CookieBox"%>
<%@page import="model2.LoginInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	
	//로그인 처리
	// 아이디의 값과 비밀번호의 값을 문자열 비교해서 같은 로그인처리(세션 속성에 저장 )

	
	// 1. request 객체로 사용자 요청정보 받기
	String uid = request.getParameter("uid");
	String pw = request.getParameter("pw");
	String chk = request.getParameter("remember");

	String rediectUri = request.getParameter("redirecUri");
	
	
	// 2. 로그인을 위한 비교 : 아이디 비밀번호 문자열 비교
	boolean loginChk = false;
	
	if(uid.equals(pw)){
		// 3. 로그인 처리 : 세션의 속성에 데이터 저장
		//session.setAttribute("memberId", uid);
		LoginInfo loginInfo = new LoginInfo(uid, pw);
		session.setAttribute("loginInfo", loginInfo);
		
		loginChk = true;
	}
	
	
	// 4. 응답처리 : html,  로그인 처리 일때/로그인이 되지 않았을 때 2가지로
	// 체크가 null이 아니라면, 위에서 받아온 데이터 쿠키객체 생성 ㅡ> 쿠키박스에 저장하기
	// 체크가 null이면, 새로운 쿠키생성 x, 기존에 있으면 삭제된다. 
	if(loginChk){
		// 쿠키 설정에 사용한 변수
		String cookieName = "uid";
		String cookiepath = request.getContextPath();
		
		// 회원 아이디 쿠키 설정 
		if(chk!=null){
			response.addCookie(CookieBox.createCookie(cookieName, uid, cookiepath, 60*60*24*365));
		
		} else {
			response.addCookie(CookieBox.createCookie(cookieName, uid, cookiepath, 0));
		}
		
		// 로그인이 필요했던 이전 페이지
		response.sendRedirect(rediectUri) ;
			
	} else {
		%>
		<script>
			alert('아이디 또는 비밀번호를 확인후 다시 로그인해 주세요.') 
			history.go(-1);
		</script>
		<%
	}
		
%>
    
    
<%-- 로그인시 로그인이 필요했던 이전페이지로 이동하기 떄문에, 
로그인처리 결과 페이지가 불필요. 따라서 아래코드 삭제.    
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

	<%@ include file="../include/header.jsp" %>
	<!-- 파일경로 찾을 때, / 슬래시로 시작하면, 절대경로. 루트가 된다.  -->
	<%@ include file="/include/header.jsp" %>
	
	<div>
		<h1>로그인 완료 (처리결과)</h1>
	</div>
	
	<form action="memberLoginForm.jsp" method="post">
		ID <input type="text" class="login" name="id">
		PW <input type="password" class="login" name="pw">
		아이디 기억하기 <input type="checkbox" name="idCheck">
		login <input type="submit" class="login" name="login">
	</form>
	
	@ include file="memberLoginForm.html"


	<%@ include file="/include/footer.jsp" %>
	
</body>
</html>

 --%>