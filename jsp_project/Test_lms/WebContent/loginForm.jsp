<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<style></style>
</head>

<body>
	<div>
		<img src="<%=request.getContextPath()%>/img/logo.png" class="icon" />
		<h1 class="subtitle">로그인</h1>

		<hr>

		<form action="login.do" method="post">

			<table class="table">
				<tr>
					<td>ID</td>
					<td><input type="text" name="uid" value="">
					</td>
				</tr>
				<tr>
					<td>PW</td>
					<td><input type="password" name="upw"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="checkbox" name="remember" value="r"
						${checked}> 아이디 기억하기</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="로그인"></td>
				</tr>
			</table>

		</form>


	</div>

</body>
</html>