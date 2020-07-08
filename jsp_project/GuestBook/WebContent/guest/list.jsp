<!-- 방명록의 글쓰기
	1. html : 입력 폼 페이지
	2. jsp : 전달 받을 주소
	           Service에게 요청데이터(사용자의 입력데이터) 전송
	3. 요청 정보를 담는 클래스
	   핵심처리를 하는 Service 클래스
	4. MessageDao 데이터를 전달 받아 insert
	5. jsp로 view  응답 만들기 -->



<!-- 1. html : 입력 폼 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		table td {
			padding: 10px;
		}
		
		input, textarea{
			padding: 10px;
			
		}
	</style>
</head>
<body>
	
	<h3>방명록 글쓰기</h3>
	<hr>
	
	
	<form action="messageWrite.jsp" method="post">
		<table>
			<tr>
				<td><label for="uname">이름</label></td>
				<td><input type="text" id="uname" name="uname" required></td>
			</tr>
			<tr>
				<td><label for="pw">비밀번호</label></td>
				<td><input type="password" id="pw" name="pw" required></td>
			</tr>
			<tr>
				<td><label for="message">메시지 남기기</label></td>
				<td><textarea row="10" cols="20" id="message" name="message" required></textarea></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="글쓰기">
				<input type="reset"></td>
			</tr>
		
		</table>
	</form>
	
	
</body>
</html>