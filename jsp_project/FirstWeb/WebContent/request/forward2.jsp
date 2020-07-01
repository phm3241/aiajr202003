<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
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
						out.println(likes[i]+"<br>");   // java<br>
					}
				%>
				<%-- <td><%= request.getParameter("like") %></td> --%>
			</td>			
		</tr>
		
			
	</table>

</body>
</html>