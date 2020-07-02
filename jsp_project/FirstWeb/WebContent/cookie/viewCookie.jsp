<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	CookieBox cookieBox = new CookieBox(request);

%>


<%--
	// 쿠키정보 배열로 받기 ㅡ> CookieBox 이용으로 이부분은 삭제
	Cookie[] cookies = request.getCookies();
--%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 정보</h1>
	
	
	<div>uid = <%= cookieBox.getValue("uid") %></div>
	<div>uname = <%= cookieBox.getValue("uname") %></div>
	
	
	<%-- CookieBox 이용으로 아래 부분은 삭제
	
		// 배열로 받은 쿠키정보 ㅡ> 비어있지 않으면 ㅡ> 반복문으로 출력
		if(cookies != null && cookies.length>0){

			for(int i=0; i<cookies.length; i++){
				
				// 검색은 이 방법으로 할 수밖에 없다. 현재는... 
				// 나중에는 EL사용해서 쿠키검색가능. 
				// if(cookies[i].getName().equals("uid")){
					out.println("<div> "+cookies[i].getName()+" = "+cookies[i].getValue()+"</div>");
				//}
			};
		};
	--%>
	
	<a href="editCookie.jsp">쿠키값 수정하기</a> <br>
	<a href="deleteCookie.jsp">쿠키값 삭제하기</a> 	
	
	
	
</body>
</html>






