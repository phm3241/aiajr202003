<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("utf-8"); 
%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자의 요청정보 출력</title>
</head>
<body>
	<h1>전송결과</h1>
	<hr>
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%= request.getParameter("username") %></td>
			<!-- 사용자의 입력데이터는 String(문자열) 이다.   -->
		</tr>	
		<tr>
			<td>직업</td>
			<td><%= request.getParameter("job") %></td>
		</tr>	
		<tr>
			<td>관심사</td>
			<td>
				<%
					// 입력데이터 여러개일 경우, 배열로 데이터 받고, 반복문으로 출력. 
					String[] likes = request.getParameterValues("like");
					
					for(int i=0; i<likes.length; i++){
						out.println(likes[i]);   // java<br>
					}
				%>
				<%-- <td><%= request.getParameter("like") %></td> --%>
			</td>			
		</tr>
		<tr>
			<td>요청 메서드</td>
			<td> <%= request.getMethod() %></td>
		</tr>
		<tr>
			<td>쿠키 정보</td>
			<td> 
				 <%
				 // 쿠키타입의 배열반환
				 // Cookie : getName(), getValue()
				 Cookie[] cookies = request.getCookies();
				 for(int i=0; i<cookies.length; i++){
					 out.println(cookies[i].getName()+"="+cookies[i].getValue());
				 }
				 %>
			</td> 
		</tr>
		<tr>
			<td>요청 정보 url</td>
			<td> 
				 <%= request.getProtocol() %> <br>
				 <%= request.getRequestURL() %> <br> <!-- 전체 주소 -->
				 <%= request.getRequestURI() %> <br> <!-- 사용자의 요청주소 -->
			</td> 
		</tr>
			
	</table>
	
	
	<!-- 위에서 사용한 request 객체가 요청정보를 담고 forward2.jsp에서도 쓰인다.
	model2 방식에서 중요한 부분. -->
	
	<jsp:forward page="forward2.jsp"/>
	
	
</body>
</html>