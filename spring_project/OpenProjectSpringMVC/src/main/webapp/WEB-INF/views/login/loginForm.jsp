<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="../css/default.css">
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

	<div>
		<h1 class="subtitle">로그인</h1>
		
		<hr>
		
		<form method="post">
		
			<table class="table">
				<tr>
					<td></td>
					<td> <input type="checkbox" name="idchk" id="idchk"> </td>
				</tr>
				<tr>
					<td> ID </td>
					<td> <input type="text" name="uid" value="${loginRequest.uid}"> </td>
				</tr>
				<tr>
					<td> PW </td>
					<td> <input type="password" name="upw"> </td>
				</tr>				
				<tr>
					<td></td>
					<td> <input type="checkbox" name="remember" value="r"  ${checked} > 아이디 기억하기  </td>
				</tr>
				<tr>
					<td colspan="2"> <input type="submit" value="로그인"> </td>
				</tr>
			</table>
		
		</form>
		
		
	</div>

	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
</body>
</html>