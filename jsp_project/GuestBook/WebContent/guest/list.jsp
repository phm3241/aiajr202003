<!-- 방명록의 글쓰기
	1. html : 입력 폼 페이지
	2. jsp : 전달 받을 주소
	           Service에게 요청데이터(사용자의 입력데이터) 전송
	3. 요청 정보를 담는 클래스
	   핵심처리를 하는 Service 클래스
	4. MessageDao 데이터를 전달 받아 insert
	5. jsp로 view  응답 만들기 -->



<%@page import="guestbook.model.MessageListView"%>
<%@page import="guestbook.service.GetMessageListService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 파라미터에 잘못된 데이터가 들어와도 1page가 들어가도록..
	// list.jsp?page=kkk 라고 들어가게되면, null은 아니지만.. 오류발생하므로..
	// 나중에 예외처리 필요..
	int pageNum = 1;   

	String pageNumber = request.getParameter("page");

	if(pageNumber != null){
		pageNum = Integer.parseInt(pageNumber);
	};
	
	
	// GetMessageListService : 게시판 목록 서비스  
	GetMessageListService service = GetMessageListService.getInstance();
	// getMessageList(pageNum) 메서드는 
	// 		전체 게시물을 몇개의 게시물로 구분하여 페이지 구성하고
	//   		ㅡ> 구성한 전체 목록 중 "선택한 페이지의 게시물들"을 MessageListView 객체로 반환.
	// * 매개변수는 int타입으로 했기 때문에, 위에서처럼 형변환하여 넣어주기.
	MessageListView view = service.getMessageList(pageNum);
	
	request.setAttribute("listView", view);

%>

<jsp:forward page="list_view.jsp"/>

