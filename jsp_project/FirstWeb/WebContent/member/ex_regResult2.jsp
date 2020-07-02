<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("utf-8");
%>    
    
<jsp:useBean id="requestInfo" class="model.RequestMemberInfo" scope="page"/> 

<!-- html의 name값과 bean class의 변수명을 동일하게 해주면, getter, setter를 이용하여 자동으로 수정해준다?
나중에는 스프링을 사용하므로, action tag는 사용하지 않지만, beans class는 vo, dto의 개념으로 사용된다?  -->
<jsp:setProperty property="*" name="requestInfo"/>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>regResult2</title>
</head>
<body>

	<h2> [ 회 원 가 입 _ 처 리 결 과] </h2>
	<table>
		<tr>
			<td> 아이디 </td>
			<td> <%--= request.getParameter("id") --%>
				 <%= requestInfo.getId()%> 
		 	</td>
		</tr>
		<tr>
			<td> 비번 </td>
			<td> <%--= request.getParameter("pw") --%> 
				 <%= requestInfo.getPw()%> 
			</td>
		</tr>
		<tr>
			<td> 이름 </td>
			<td> <%--= request.getParameter("uname") --%> 
			 	 <%= requestInfo.getUname()%> 
			</td>
		</tr>
		<tr>
			<td> 사진 </td>
			<td> <%--= request.getParameter("uphoto") --%> </td>
		</tr>
		<tr>
			<td> 요청메서드 </td>
			<td> <%--= request.getMethod() --%> </td>
		</tr>
		<tr>
			<td> 쿠키정보 </td>
			<td> 
				<% 
				Cookie[] cookies = request.getCookies(); 
				for(int i=0; i<cookies.length; i++){
					out.println(cookies[i].getName()+"="+cookies[i].getValue());
				}
				%> 
			</td>
		</tr>
		<tr>
			<td> 요청정보 </td>
			<td> 
				<%= request.getProtocol() %> <br>
				<%= request.getRequestURL() %> <br>
				<%= request.getRequestURI() %> 
			</td>
		</tr>
	</table>

</body>
</html>