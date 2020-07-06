<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL tag</title>
</head>
<body>
	<c:out value="jstl tag out ㅡ> 데이터를 출력합니다."/>
	<br>
	<c:out value="${members[7].email}" default= "<i>이메일 없음</i>" escapeXml="false"/>
	<br>
	<c:out value="${members[8].email}" escapeXml="false">
		<span style ="color: red">이메일 없음</span>
	</c:out>
	
	
	
	<c:if test="${members[8].email==null}">
		<span style ="color: blue">이메일 없음</span>
	</c:if>
	
	
	
	
	<!-- 데이터의 반복처리 
	반복해야하는 데이터를 items에 넣어준다. -->
	<c:forEach items="${applicationScope.members}"
				var="member"
				varStatus="status"
				>
				
	<h3>
	
	${status.index} ${status.count}
	
	이름 : ${member.name}, 이메일 : 
	<c:out value="${member.email}" escapeXml="false">
		<span style ="color: red">이메일 없음</span>
	</c:out>
	
		<c:if test="${member.email==null}">
			<span style ="color: blue">이메일 없음</span>
		</c:if>
	
		<!-- empty : 위의 null을 확인하는 것보다 더 직관적이다.  -->
		<c:if test="${ empty member.email}">
			<span style ="color: green">이메일 없음</span>
		</c:if>


	</h3>	
	</c:forEach>
	
	
	
	<select name="year">
		
		<!-- select option 만들 때 forEach 사용하기! -->
		<c:forEach var="year" begin="1950" end="2020" step="1">
			<option value="${year}" ${param.year==year? 'selected':''}> ${year} </option>
		</c:forEach>
		
	</select>
	
	
	<br>
	
	<!-- c:forTokens: , 를 기준으로 데이터를 잘라서 출력해준다.  -->
	<c:forTokens items="손흥민,010-7777-1111,런던" delims="," var="token">
		${token}<br>
	</c:forTokens>
	
	
	
	<h1>
		
		<!-- 경로를 절대경로로 표시하면, 앞에 컨텍스트 경로가 자동으로 붙는다.  -->
		url : <c:url value="/index.jsp"/>
		
		<a href="<c:url value="/index.jsp"/>">홈</a>
		
		<br>
		<!-- 경로를 상대경로로 표시하면, 앞에 컨텍스트 경로가 자동으로 붙지 않는다.  -->
		url2 : <c:url value="jstl_tag2.jsp">
			<c:param name="year" value="1999"/>
		</c:url>
		
		<br>
		<!-- 경로를 상대경로로 표시하면, 앞에 컨텍스트 경로가 자동으로 붙지 않는다.  
		url2와 같은 결과이다. 파라미터를 value값으로 쓰면, 가독성면서 더 좋다.-->
		url3 : <c:url value="jstl_tag2.jsp?year=1999"/>
		
		
		<br>
		<c:url value="jstl_tag2.jsp?year=1999" var="reurl"/>
		url4 : ${reurl}
		
	</h1>
	
	<!-- forward랑은 다르다 -->
	<c:redirect url="${reurl}">
		<c:param name="month">7</c:param>
	</c:redirect>
	
	
	
</body>
</html>








