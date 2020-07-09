<%@page import="guestbook.service.DeleteMessageService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	String pw = request.getParameter("pw");
	int mid = Integer.parseInt(request.getParameter("mid"));
	
	// MessageDeleteService 
	// ㅡ> dao.selectMessage(mid)  게시물이 존재유무 확인.. 
	//		ㅡ> deleteMessage() 삭제할 수 있는 dao
	
	DeleteMessageService service = DeleteMessageService.getInstance();
	
	int resutlCnt = service.deleteMessage(mid, pw);
	
	request.setAttribute("resultCode", resutlCnt);
	
	
	
%>

<%--
	게시물 삭제시, 결과코드 확인..ㅡ> 게시물 없을때, 비번틀렸을 때, 정상삭제처리 되었을 때 
	${resultCode} 
--%>

<jsp:forward page="deleteMessage_view.jsp"/> 