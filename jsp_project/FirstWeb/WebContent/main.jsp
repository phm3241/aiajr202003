<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> include Test </title>
	<style>
		header {
			text-align: center;
		}
		
		#news {
			width: 45%;
			float: left;
		}
		
		#shopping {
			width: 45%;
			float: right;
		}
		
		#wrap {
			overflow: hidden;
		}
		
		
	</style>

</head>
<body>
	<!-- 모듈화 : 디렉티브의 include와 액션태그 include 사용해서.. -->
	<!-- main.jsp 하게되면 실행순서..
	1. 디렉티브의 include는 읽고,, 액션태그 먼저 실행 footer.jsp ㅡ> footer.class 
	2. main.jsp 실행 -->
	
	<!-- include 지시어 : 
		  현재 JSP 파일에 다른 HTML이나 JSP 문서를 포함하기 위한 기능을 제공. 파일 하나 
		  코드 문자로만 인식하여 가져온다. 
		  코드의 모듈화할 수 있다. 생산성 높이고, 유지보수도 편해진다.-->
	<%@ include file="include/header.jsp" %>
	<div id="wrap">
		<%@ include file="include/news.jsp" %>
		<%@ include file="include/shopping.jsp" %>
	</div>
	
	
	<!-- 액션태그 사용 -->
	<jsp:include page="include/footer.jsp">
		<!-- 파라미터 받기 -->
		<jsp:param value="cool@gmail.com" name="email"/>
		<jsp:param value="010-1111-1111" name="tell"/>
	</jsp:include>
	
		

</body>
</html>





