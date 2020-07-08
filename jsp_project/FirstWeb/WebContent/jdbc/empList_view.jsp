<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>

	<style>
		table {
			width: 80%;
		}
		
		table td {
			padding: 10px;
		}
	</style>
	
</head>


<body>

	<%-- 저장된 원본 데이터 : ${empList} --%>

	<h1>사원 리스트</h1>
	<hr>
	
	<table border=1>
		<tr>
			<th>사원 번호</th>
			<th>사원 이름</th>
			<th>사원 급여</th>
			<th>사원 직급</th>
		</tr>

	
		<!-- empList가 비어있을 때  -->
		<c:if test="${ empty empList}">
			<!-- empty의 결과가 true가 나올 때 
				 : empList가 null일떄, 요소의 갯수가 0개 일때, 문자열이 "" 공백일 때,  -->
				
			<tr>
				<td colspan="4">데이터가 존재하지 않습니다. </td>
			</tr>
		</c:if>
		
		
		<!-- empList가 비어있지 않을 때  -->
		<c:if test="${ not empty empList}">
		<c:forEach items="${empList}" var="emp">
			<tr>
				<td>${emp.empno}</td>
				<td>${emp.ename}</td>
				<td>${emp.sal}</td>
				<td>${emp.job}</td>
			</tr>
		</c:forEach>
		</c:if>
		
		
	</table>

</body>
</html>