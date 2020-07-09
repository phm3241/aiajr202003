package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import guestbook.dao.MessageDao;
import guestbook.jdbc.ConnectionProvider;
import guestbook.model.Message;

public class DeleteMessageService {
	
	// 싱글톤 처리
	private DeleteMessageService() {}
	private static DeleteMessageService service= new DeleteMessageService();
	public static DeleteMessageService getInstance() {
		return service;
	}
	
	MessageDao dao;
	
	
	// 먼저! 게시물 있는지 여부 확인 (매개변수로 받은 mid, pw 비교확인)
	public int deleteMessage(int mid, String pw) {
		
		int resultCnt = 0; 
		
		// Connection 객체는 서비스에서 만들어서 dao에 전달..
		Connection conn = null; 

		Message message = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			
			dao = MessageDao.getInstance();
			
			// 1. mid의 메시지가 존재하는지 확인 
			message = dao.selectMessage(conn, mid);

			
			// 2. 메시지가 존재하면, 객체의 pw와 사용자가 입력한 pw비교
			//    예외를 통한 분기
			
			// dao 에서 받은 메시지 ㅡ> 존재하지 않으면, 강제적 예외발생
			if(message == null) {
				resultCnt = -1;
				throw new Exception("삭제할 메시지가 존재하지 않음");
			}
			
			// dao 에서 받은 메시지 ㅡ> pw가 일치하지 않으면, 강제적 예외발생 
			if(!message.getPw().equals(pw)) {
				resultCnt = -2;
				throw new Exception("비밀번호가 일치하지 않음");
			}
			
			
			// 3. 비교의 결과가 같다면 mid의 메시지를 삭제
			resultCnt = dao.deleteMessage(conn, mid);
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			// 예외가 발생했을 때, 메시지처리
			System.out.println(e.getMessage());
			e.printStackTrace();
		} finally {
			
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				};
			};
		};
		
		return resultCnt;
	};
	
	
	
	
	
}
