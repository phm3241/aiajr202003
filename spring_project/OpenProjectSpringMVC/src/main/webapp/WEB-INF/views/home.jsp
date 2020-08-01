<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
	<title>Home</title>
	<%-- <link rel="stylesheet" href="<c:url value='/css/default.css'/>"> --%>
	<style>
		@charset "UTF-8";
		
		* {
			margin: 0;
			padding: 0;
		}
		
		#header {
			padding: 15px 20px;
		}
		
		#nav {
			border-bottom: 1px solid #DDD;
			border-top: 1px solid #DDD;
			overflow: hidden;
			list-style: none;
		}
		
		#nav>li {
			float: left;
			padding: 5px 20px;
		}
		
		footer {
			text-align: center;
			border: 1px solid #DDD;
			padding: 20px 0;
			margin-top: 10px;
		}
		
		#nav+div {
			padding: 25px;
		}
		
		.subtitle {
			padding: 15px 0;
		}
		
		hr {
			border: 0px;
			border-top: thin solid #ddd;
			margin: 15px 0;
		}
		
		table.table td {
			padding: 5px;
		}
		
		input[type=text], input[type=password], input[type=email] {
			padding: 3px;
		}
		
		.deletForm_div {
			display: none;
			width: 300px;
			float: right;
		}
	</style>
</head>
<body>


	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<br><br><br><br>
	<h3>Open Project!</h3>
	<h3>SpringMVC 구조로 변경작업 중입니다. </h3>
	<br>
	[작업진행목록] <br>
	- 회원가입 : 일단 구조변경으로 구현완료. DB연동 예정 <br>
	- 로그인 : 일단 구조변경으로 구현완료. DB연동 예정 <br><br><br>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>





</body>
</html>
