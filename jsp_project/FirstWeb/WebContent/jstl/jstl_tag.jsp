<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- jsp안에서jstl을 쓰기 위해 추가해주어야한다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%
	request.setAttribute("price", 10000);
	request.setAttribute("now", new Date());
	
%>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL tag</title>
</head>
<body>
	
	
	<!---------------------------------------------------------------------------------->
	<h3> 날짜 포멧팅 : fmt:formatDate </h3>
	<h4> - 3가지로 날짜 포맷팅이 가능 : java, DB, JSTL  ㅡ> DB에서 설정하는 것을 권장. </h4><br>
	
	
	<b> 날짜 표현 : </b><br>
	<fmt:formatDate value="${now}"/><br>  <!-- requestScope.now 에서 requestScope 생략가능.. now 변수의 중복이 없으므로..-->
	<fmt:formatDate value="${now}" type="date"/> <br>
	<fmt:formatDate value="${now}" type="date" dateStyle="short"/> <br>
	<fmt:formatDate value="${now}" type="date" dateStyle="full"/> <br><br>
	
	
	<b> 시간표현 : </b><br>
	<fmt:formatDate value="${now}" type="time"/> <br>
	<fmt:formatDate value="${now}" type="time" timeStyle="short"/> <br>
	<fmt:formatDate value="${now}" type="time" timeStyle="full"/> <br><br>
	
	
	<b> 날짜와 시간을 동시에 표현 : </b><br>
	<fmt:formatDate value="${now}" type="both"/> <br>
	<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/> <br>
	<fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/> <br><br>
	
	
	<b> 날짜 포멧팅 : </b><br>
	<fmt:formatDate value="${now}" pattern="yyyy.MM.dd H:mm:ss"/> <br>
	
	<fmt:timeZone value="US/Hawaii">
	하와이 시간대 설정 : <fmt:formatDate value="${now}" pattern="yyyy.MM.dd H:mm"/> <br>
	</fmt:timeZone> <br>
	
	
	<%-- 시간대목록
	<c:forEach var="id" items="<%= java.util.TimeZone.getAvailableIDs() %>"> ${id}<br/> </c:forEach> --%>
	
	
	
	
	
	
	
	<br><br><hr>
	<!---------------------------------------------------------------------------------->
	<h3> 숫자 포멧팅 : fmt:formatNumber </h3>
	
	<%-- <c:set var="number" value="${10000}"/> 대신
		 디렉티브 영역에서 request.setAttribute("price", 10000);로 작성 --%>
	
	숫자타입 : <fmt:formatNumber value="${price}" type="number" />, 
			  <!-- var로 변수명을 지정하면, 바로 출력되지 않고, 변수명 으로 여러번 출력가능하다.  -->
			  <fmt:formatNumber value="${price}" type="number" var="numberType"/>
			  ${numberType};
	
	<br>
	통화 : <fmt:formatNumber value="${price}" type="currency" />,  
		  <fmt:formatNumber value="${price}" type="currency" currencySymbol="$"/>
	
	<br>
	퍼센트 : <fmt:formatNumber value="${price/30000}" type="percent" />, 
		    <fmt:formatNumber value="${price/30000}" type="percent" groupingUsed="false"/> 
	
	<br>
	패턴 : <fmt:formatNumber value="${price}" pattern="000000.00"/>,
		  <fmt:formatNumber value="${price}" pattern="000,000"/>


	
	
	
	<br><br><hr>
	<!---------------------------------------------------------------------------------->
	<h3> 데이터의 출력 : c:out / 데이터의 분기 : c:if </h3>
	
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
	
	
	
	
	
	<br><br><hr>
	<!---------------------------------------------------------------------------------->
	<h3> 데이터의 반복처리 : c:forEach  </h3>
	<!-- 반복해야하는 데이터를 items에 넣어준다. -->
	
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
	<%-- <c:redirect url="${reurl}">
		<c:param name="month">7</c:param>
	</c:redirect> --%>
	
	
	
	
	
	
</body>
</html>








