package member.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import jdbc.ConnectionProvider;
import member.model.Member;

public class MemberDao {
	
	private MemberDao() {}
	private static MemberDao dao = new MemberDao();
	public static MemberDao getInstance() {
		return dao;
	}
	
	
	// C 회원등록
	public int insertMember(Connection conn, Member member) throws SQLException {
		
		int resultCnt = 0;
		
		PreparedStatement pstmt = null;
		String sql = "INSERT INTO project.member(uid, upw, uname, uphoto) VALUES(?, ?, ?, ?)";
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, member.getUid());
			pstmt.setString(2, member.getUpw());
			pstmt.setString(3, member.getUname());
			pstmt.setString(4, member.getUphoto());
			
			resultCnt = pstmt.executeUpdate();
			
			
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
		}
		
		return resultCnt;
	} //insertMember() end

	
	
	

	// R 회원등록시 - 아이디 중복체크 메서드 
	public int selectById(Connection conn, String id) throws SQLException  {
		
		int resultCnt = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs;
		
		try {
			
			// 매개변수로 받은 id ㅡ> db에서 count로 확인
			String sql = "select count(*) from project.member where uid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,  id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				resultCnt = rs.getInt(1);
			}
		
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
		}
		return resultCnt;
		
	} //selectById() end


	
	
	// R 회원 리스트 카운트 
	public int selectTotalCount(Connection conn) throws SQLException {
		
		int resultCnt = 0;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {

			String sql = "select count(*) from project.member ";
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
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
		
	} //selectTotalCount() end

	
	
	
	// R 회원 리스트 출력 
	public List<Member> selectMemberList(Connection conn, int startRow) throws SQLException {
		
		List<Member> memberList = new ArrayList<Member>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			String sql = "select idx, uid, upw, uname, uphoto, regdate  " + 
						" from project.member  " + 
						" order by regdate desc " + 
						" limit ?,3 ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startRow);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				// 객체 만들어서 리스트에 넣어주기
				Member member = new Member(
						rs.getInt("idx"), 
						rs.getString("uid"), 
						rs.getString("upw"), 
						rs.getString("uname"), 
						rs.getString("uphoto"), 
						rs.getDate("regdate"));
				memberList.add(member);
			};
			
		} finally {
			
			if(rs != null) {
				rs.close();
			}
			if(pstmt !=null) {
				pstmt.close();
			};
			
		};
		
		return memberList;
	} //selectMemberList() end
	

	
	
	
	
	// R 회원 정보 출력 (수정할 때 원본확인)
	public Member selectMemberInfo(Connection conn, String id) throws SQLException {
		
		Member member = new Member();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			
			String sql = "select idx, uid, upw, uname, uphoto, regdate  " + 
						" from project.member where uid=?  ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				// 객체 만들어서 리스트에 넣어주기
				member = new Member(
						rs.getInt("idx"), 
						rs.getString("uid"), 
						rs.getString("upw"), 
						rs.getString("uname"), 
						rs.getString("uphoto"), 
						rs.getDate("regdate"));
			};
			
		} finally {
			
			if(rs != null) {
				rs.close();
			}
			if(pstmt !=null) {
				pstmt.close();
			};
			
		};
		
		return member;
	} //selectMemberInfo() end
		
	
	
	
	
	
	
	
	
	
	// R 회원 수정,삭제시 - id, pw 일치 확인
	public boolean checkIdPw(Connection conn, String id, String pw) throws SQLException {
		
		boolean checkPw = false;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbPw = null;
		try {
		
			// id 값으로 회원정보 찾기 ㅡ pw찾기
			String sql = "select uid, upw from project.member where uid=? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			// ★rs 쓸 때 이렇게 써야한다. ★
			if(rs.next()) {
				dbPw = rs.getString("upw");
				
				if(rs != null && dbPw.equals(pw)) {
					checkPw = true;
				}
			
			}
			
		
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
			if(rs != null) {
				rs.close();
			}
			
		}
		
		return checkPw;
	} //checkIdPw() end
	
	
	
	
	
	// U 회원정보 수정
	public int editMember(Connection conn, Member member) throws SQLException {
			
			int resultCnt = 0;
			
			PreparedStatement pstmt = null;
			String sql = "UPDATE project.member  " + 
					 	" SET upw = ?, uname = ?, uphoto = ?  " + 
					 	" WHERE uid = ?";
			
			try {
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, member.getUpw());
				pstmt.setString(2, member.getUname());
				pstmt.setString(3, member.getUphoto());
				pstmt.setString(4, member.getUid());
				
				resultCnt = pstmt.executeUpdate();
				
				
			} finally {
				if(pstmt != null) {
					pstmt.close();
				}
			}
			
			return resultCnt;
		} //editMember() end
	
	
	


	
	
	// D 회원삭제 
	public int deleteMember(Connection conn, String id) throws SQLException {
		
		int resultCnt = 0;
		PreparedStatement pstmt = null;
		
		try {
			
			String sql = "delete from project.member where uid=? ";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			
			resultCnt = pstmt.executeUpdate();
		
		} finally {
			if( pstmt != null) {
				pstmt.close();
			}
		}
		
		return resultCnt;
		
	}

	
	
	// json 형태로 바꿔주는 메서드?
	public List<Member> selectTotalList(Connection conn) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<Member> memberList = new ArrayList<Member>();
		
		String sql = "select * from project.member order by uname";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Member member = new Member();
				member.setIdx(rs.getInt("idx"));
				member.setUid(rs.getString("uid"));
				member.setUpw(rs.getString("upw"));
				member.setUname(rs.getString("uname"));
				member.setUphoto(rs.getString("uphoto"));
				
				memberList.add(member);
			}
			
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
		}
		
		return memberList;
	}
	
	
	
	


	

	
	

	
	
	
	
	
	
	
	
	
	

} //class end




