<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!-- 1. html : 입력 폼 페이지 -->
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
		div.msg_box {
			width: 200px;
			border:3px solid #333;
			margin: 5px;
			padding: 10px;
		}
		
		form {
			/* display: none; */
		} 
		
		.currentPage {
			font-size:1.5em;
			font-weigtht: bold;
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
	
	<hr>
	
	
	
	<%--
		전체 게시글을 한페이지당 3개씩 나눈 게시판목록 : MessageListView 객체  
		${listView} 
	--%>
	
	
	<!-- 해당 페이지 게시글 목록 -->
	<c:if test="${not empty listView.messageList}">
	
		<c:forEach items="${listView.messageList}" var="message">
			<div class="msg_box">
				게시물 번호 ${message.mid} <br>
				작성자 ${message.uname} <br>
				메시지 ${message.message} <br>
				<a href="deleteMessageConfirm.jsp?mid=${message.mid}">삭제</a>
			</div>
		</c:forEach>
	
	</c:if>
	
	
	
	<!-- 페이지가 있으면, 반복문으로 페이지 목록표 출력하기 -->
	<c:if test="${listView.pageTotalCount > 0}">
		<div class="paging">
			<c:forEach begin="1" end="${listView.pageTotalCount}" var="num">
				<a href="list.jsp?page=${num}" ${listView.currentPageNumber eq num? 'class="currentPage"':''}> [ ${num} ] </a>
			</c:forEach>
		</div>
	</c:if>
	

	
	
	
	
	
</body>
</html>
    
    
