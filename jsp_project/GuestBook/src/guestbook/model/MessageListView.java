package guestbook.model;

import java.util.List;

public class MessageListView {
	
	// 전체 게시물의 개수
	private int messageTotalCount;
	
	// 현재 페이지 번호
	private int currentPageNumber;
	
	// 메시지 리스트
	private List<Message> messageList;
	
	// 전체 페이지의 개수
	private int pageTotalCount;
	
	// 페이지당 표현 게시물의 개수 
	private int messageCountPerpage;
	
	// 게시물의 시작행
	private int startRow;
	
	// 게시물의 마지막행
	private int endRow;

	// 생성자
	public MessageListView (int messageTotalCount, int currentPageNumber, List<Message> messageList,
			int messageCountPerpage, int startRow, int endRow) {
		this.messageTotalCount = messageTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.messageList = messageList;
		this.messageCountPerpage = messageCountPerpage;  // 상수로 만들어둠.
		this.startRow = startRow;
		this.endRow = endRow;
		
		// new MessageListView(); 할때
		// 인스턴스 생성 ㅡ> 생성자호출 ㅡ> 변수부터 만들고 메서드 호출하도록.. 
		calTotalPageCount();
	};
	
	
	// 필요한 페이지수 계산
	private void calTotalPageCount() {
		if( messageTotalCount == 0 ) {
			pageTotalCount = 0;
		} else {
			// 전체 게시물 수를 보여질 페이지 수로 나눠주기.
			pageTotalCount = messageTotalCount/messageCountPerpage;
			// 나누었을 때 나머지가 있다면, 페이지 하나 추가.
			if(messageTotalCount % messageCountPerpage > 0) {
				pageTotalCount++;
			};
			
		}; //else end
	}; //calTotalPageCount method end


	
	// 전체 게시물의 개수가 비어있는지 확인.
	public boolean isEmpty() {
		return messageTotalCount == 0;
	};
	
	
	
	
	// getter 만 생성
	
	public int getMessageTotalCount() {
		return messageTotalCount;
	}


	public int getCurrentPageNumber() {
		return currentPageNumber;
	}


	public List<Message> getMessageList() {
		return messageList;
	}


	public int getPageTotalCount() {
		return pageTotalCount;
	}


	public int getMessageCountPerpage() {
		return messageCountPerpage;
	}


	public int getStartRow() {
		return startRow;
	}


	public int getEndRow() {
		return endRow;
	}


	
	// 디버깅.. 확인용 
	@Override
	public String toString() {
		return "MessageListView [messageTotalCount=" + messageTotalCount + ", currentPageNumber=" + currentPageNumber
				+ ", messageList=" + messageList + ", pageTotalCount=" + pageTotalCount + ", messageCountPerpage="
				+ messageCountPerpage + ", startRow=" + startRow + ", endRow=" + endRow + "]";
	}; 
	
	
	
	
	
	
	
	
} //class end
