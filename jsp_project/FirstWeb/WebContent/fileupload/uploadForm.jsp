<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<title>파일 업로드</title>
</head>
<body>
	<h1>과제 제출</h1>
	<!-- 파일 업로드할때 form tag에서 반드시 post방식. multipart/form-data 설정해줘야함. 
		 둘중하나라도 빠지면 파일업로드가 안된다.  
		 이렇게 하게되면 입력정보를 useBean 액션으로 한번에 받는 것이 불가능..
		 input type을 하나하나한 구분해서 받기 때문..-->
	<form action="upload.jsp" method="post" enctype="multipart/form-data">
		이름 : <input type="text" name="uname"> <br>
		학번 : <input type="text" name="sno"> <br>
		과제파일 : <input type="file" name="report">
		<input type="submit" value="제출">
	</form>
	
	
</body>
</html>