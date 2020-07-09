package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import guestbook.dao.MessageDao;
import guestbook.jdbc.ConnectionProvider;
import guestbook.model.Message;
import guestbook.model.MessageListView;

public class GetMessageListService {
	
	// 싱글톤 처리
	private GetMessageListService() {};
	private static GetMessageListService service = new GetMessageListService();
	public static GetMessageListService getInstance() {
		return service;
	};
	
	// Dao 가져오기
	private MessageDao dao;
	
	
	// 한페이지에 표현하는 메시지의 개수 : 상수표현
	private final int MESSAGE_COUNT_PER_PAGE = 3;
	
	
	// 전체 게시물을 3개의 게시물로 구분하여 페이지 구성하고
	//   ㅡ> 구성한 전체 목록 중 "선택한 페이지의 게시물들"을 MessageListView 객체로 반환.
	public MessageListView getMessageList(int pageNumber) {
		
		// 페이지 번호 ㅡ> 시작 행, 끝 행을 구할 수 있다. (startRow, endRow)
		// 이걸 받아서 dao에서 매개변수로 넘겨서 List를 요청할 수 있다. 
		
		Connection conn = null;
		
		MessageListView messageListView= null;
		
		try {
			// 필요한 Connection과 Dao
			conn = ConnectionProvider.getConnection();
			dao = MessageDao.getInstance();
			
			// 페이지의 전체 메시지 구하기
			List<Message> messageList = null;
			
			// Dao 연동 : DB에서 테이블 출력 확인 후 ㅡ> 전체 메시지의 개수 반환
			int messageTotalCount = dao.selectTotalCount(conn);
			
			// 페이지당 표현 게시물의 개수에 따라 시작게시물과 끝게시물이 달라진다. 
			int startRow = 0;
			int endRow = 0;
			
			// 메시지가 존재하면, 페이지의 시작행, 마지막 행 구하기
			if(messageTotalCount > 0) {
				// 시작 행, 마지막 행 구하기
				// 1page: 1~3 , 2page: 4~6, 3page: 7~9  ... 
				// startRow: 1, 4, 7  endRow: 3, 6, 9 ...
				startRow = (pageNumber-1) * MESSAGE_COUNT_PER_PAGE +1;
				endRow = startRow + MESSAGE_COUNT_PER_PAGE - 1;
				
				messageList = dao.selectMessageList(conn, startRow, endRow);
				
				
			} else {
				// 총 페이지에서 벗어나는 경우, 0으로 표시
				pageNumber=0;
				//Collections.emptyList(); ???
				messageList = Collections.emptyList();
				
			};
			
			// messageListView 객체 생성
			messageListView = new MessageListView(
					messageTotalCount, 
					pageNumber, 
					messageList, 
					MESSAGE_COUNT_PER_PAGE, 
					startRow, 
					endRow);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} //finally end
		
		
		return messageListView;
		
	};  //getMessageList() method end

	
	
	
	
	
};  //class end
