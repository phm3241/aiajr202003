package guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import guestbook.jdbc.ConnectionProvider;
import guestbook.model.Message;

public class MessageDao {

	// 싱글톤 처리
	private MessageDao() {
	}
	static private MessageDao dao = new MessageDao();
	public static MessageDao getInstance() {
		return dao;
	};

	// C 입력 : 글쓰기
	public int insertMessage(Connection conn, Message message) throws SQLException {
		int resultCnt = 0;
		
		PreparedStatement pstmt = null;
		
		try {

			String sql = "insert into guestbook_message values (message_id_seq.nextVal, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, message.getUname());
			pstmt.setString(2, message.getPw());
			pstmt.setString(3, message.getMessage());
			
			resultCnt = pstmt.executeUpdate();
			
			
			
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
			
		}
		
		return resultCnt;
		
	}
	
	
	// R 읽기 : 글목록 (리스트)
	public List<Message> selectMessageList(Connection conn, int startRow, int endRow) throws SQLException{
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<Message> list = new ArrayList<Message>();
		
		// 예외처리는 service 쪽에서 해주는데, 여기서는 finally 해주기 위해서 try문 쓰기
		try {

			String sql = "select message_id, guest_name, password, message  " + 
					" from(  " + 
					"    select rownum rnum, message_id, guest_name, password, message " + 
					"    from ( " + 
					"            select * from guestbook_message order by guestbook_message.message_id desc " + 
					"        ) where rownum <= ? " + 
					" ) where rnum >= ? ";
			
			// prepareStatement 객체 생성
			pstmt = conn.prepareStatement(sql);

			// endRow 부터 설정해주기! 
			pstmt.setInt(1, endRow);
			pstmt.setInt(2, startRow);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				// 객체 만들어서 리스트에 넣어주기
				Message message = new Message(
						rs.getInt("message_id"), 
						rs.getString("guest_name"), 
						rs.getString("password"), 
						rs.getString("message"));
				list.add(message);
			};
			
			
		} finally {
			if(rs != null) {
				rs.close();
			}
			if(pstmt !=null) {
				pstmt.close();
			};
		};
		
		// 리스트 반환
		return list;
		
	}; //selectMessageList method end

	
	
	// DB에 저장되어 있는 게시물의 총 개수 반환
	public int selectTotalCount(Connection conn) throws SQLException {
		
		// DB처리 결과(행갯수)를 저장할  변수
		int resultCnt = 0;
		
		// DB처리에 필요한 객체 생성 및 초기화
		Statement stmt = null; 
		ResultSet rs = null; 
		
		// 예외처리는 service 쪽에서 해주는데, 여기서는 finally 해주기 위해서 try문 쓰기
		try {
			stmt = conn.createStatement();
			String sql="select count(*) from guestbook_message ";
			
			
			// executeQuery : 데이터베이스에서 데이터를 가져와서 결과 집합을 반환. Select 문에서만 실행 
			// 	ㅡ> resultSet 객체에 저장.
			rs = stmt.executeQuery(sql);
			
			
			// 게시물의 총 개수만 반환하는 것이므로.. 
			// 정상적으로 테이블 결과가 반환되었는지 확인하기위해 while이 아닌 if로 확인 
			if (rs.next()) {
				resultCnt = rs.getInt(1);
			};
			
			
		} finally {
			if(rs != null) {
				rs.close();
			};
			if(stmt != null) {
				stmt.close();
			};
			
		};
		
		return resultCnt;
	};

	
	
	// D 삭제 : 삭제하기 전에 (선택한) 게시물이 존재하는지 확인 
	public Message selectMessage(Connection conn, int mid) throws SQLException {
		
		Message message = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rs = null;
		
		// finally에서 close를 해주기 위해서 try 해주는 거고, 예외처리는 서비스에서 처리할 수 있도록하낟. 
		try {
			
			String sql = "select * from guestbook_message where message_id = ? ";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, mid);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				message = new Message(
						rs.getInt("message_id"), 
						rs.getString("guest_name"), 
						rs.getString("password"), 
						rs.getString("message"));
			};
			
		} finally {
			if(rs != null) {
				rs.close();
			};
			
			if(pstmt != null) {
				pstmt.close();
			};
		};
		
		
		return message;
	}

	
	
	// D 삭제 : 글삭제
	public int deleteMessage(Connection conn, int mid) throws SQLException {
		
		int resultCnt = 0;
		
		PreparedStatement pstmt = null;
		
		try {
			String sql = "delete from guestbook_message where message_id=? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mid);
			
			resultCnt = pstmt.executeUpdate();
			
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
		}
		
		return resultCnt;
	};
	
	
	
	
	
	
	
} //class end
