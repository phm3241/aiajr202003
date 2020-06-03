package PhoneBook_Ver07_JDBC;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;


public class PbUnivDao {

 		
	// dao 싱글톤패턴 처리	
	private PbUnivDao() {
	}
	private static PbUnivDao dao = new PbUnivDao();
	public static PbUnivDao getInstance() {
		return dao;
	}


	
	public List<PbUniv> univList() {
		
		// jdbc 객체 선언
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// 리스트 선언
		List<PbUniv> univList = new ArrayList<>();
		
		// 드라이버 연결
		try {
			conn = ConnectionProvider.getConnection();
	
		
		// sql
		String sql = "select * from phoneinfo_basic b join phoneinfo_univ u on b.idx=u.fr_ref ";
		
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
	
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String name = rs.getString("fr_name");
				String phonenumber = rs.getString("fr_phonenumber");
				String address = rs.getString("fr_address");
				String email = rs.getString("fr_email");
				String regdate = rs.getString("fr_regdate");
				String major = rs.getString("fr_u_major");
				int grade = rs.getInt("fr_u_year");
				
				PbUniv univ = new PbUniv(idx, name, phonenumber, address, email, regdate, major, grade);
				univList.add(univ);
				
			}
		} catch (SQLException e) {
			
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			
			
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}			
			
			
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}			
			
			e.printStackTrace();
		}
		
		return univList;
		
	} // univList() end
		
				
	public int univInsert(PbUniv univ) {
		
		// jdbc 객체 선언
		Connection conn = null;
		PreparedStatement pstmt = null;
		int resultCnt = 0;
		
		
		try {
			
			// 드라이버 연결
			conn=ConnectionProvider.getConnection();
			
			// sql
			String sql = "insert into phoneinfo_basic (name, phoneNumber, address, email) values(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, univ.getName());
			pstmt.setString(2, univ.getPhoneNumber());
			pstmt.setString(3, univ.getAddress());
			pstmt.setString(4, univ.getEmail());
			
			resultCnt = pstmt.executeUpdate();
			
			
			String sql1 = "insert into phoneInfo_univ (major, grade) values(?,?)";
			pstmt = conn.prepareStatement(sql1);
			
			pstmt.setString(1, univ.getMajor());
			pstmt.setInt(2, univ.getGrade());
			
			resultCnt += pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		// ◆ 실수부분수정 : close()구문 catch블럭에서 처리 ㅡ> finally에서 처리 
		} finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
		
		return resultCnt;
		
	} //univInsert() end
	
	
	
	
	
	
	public List<PbUniv> univSearch(String searchname) {
		
		// jdbc 객체선언
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// PbUniv 타입 리스트 생성
		List<PbUniv> univList = new ArrayList<>();
		
		
		try {
			
			// 드라이버 연결
			conn = ConnectionProvider.getConnection();
	
		
			// sql 
			// ◆ 실수부분수정 : sql문 이름검색 부분을 =로 했다.. ㅡ> like로 수정 
			// ◆ 실수부분수정 : %||?||%.. ㅡ> '%'||?||'%' 작은 따옴표추가  

			String sql = "select * from phoneinfo_basic b join phoneinfo_univ u on b.idx=u.fr_ref   "
					+ " where fr_name like '%'||?||'%'";
	
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, searchname);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String name = rs.getString("fr_name");
				String phonenumber = rs.getString("fr_phonenumber");
				String address = rs.getString("fr_address");
				String email = rs.getString("fr_email");
				String regdate = rs.getString("fr_regdate");
				String major = rs.getString("fr_u_major");
				int grade = rs.getInt("fr_u_year");
				
				PbUniv univ = new PbUniv(idx, name, phonenumber, address, email, regdate, major, grade);
				univList.add(univ);
			}
			
			
			
			} catch (SQLException e) {
				e.printStackTrace();
				
			// ◆ 실수부분수정 : close()구문 catch블럭에서 처리 ㅡ> finally에서 처리 
			} finally {
				if(pstmt != null) {
					try {
						pstmt.close();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
				}
				
				if(conn != null) {
					try {
						conn.close();
					} catch (SQLException e1) {
						e1.printStackTrace();
					}
				}
			}
				
			return univList;
	}
	
	
	
	
	
	
	public int univDelete(String name) {
		
		// jdbc 객체 선언
		Connection conn = null;
		Statement stmt = null;
		int resultCnt = 0;
		
		// 드라이버 연결
		try {
			conn = ConnectionProvider.getConnection();

		
		// ◆ 실수부분수정 : 삭제를 sql문 2개(basic, univ) ㅡ> sql문 1개(join)
		// sql
		String sql = "select * from phoneinfo_basic b join phoneinfo_univ u on b.idx=u.fr_ref   "
						+ "where fr_name = '"+name+"'"; 
		stmt = conn.createStatement();
		resultCnt = stmt.executeUpdate(sql);

			
		} catch (SQLException e) {
			e.printStackTrace();
			
		// ◆ 실수부분수정 : close()구문 catch블럭에서 처리 ㅡ> finally에서 처리 
		} finally {
			if(stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
		
		return resultCnt;
		
	} // univDelete() end
	
	
	
	
	
	
	
	
	
	
	public int univEdit(PbUniv newUniv, Connection conn) throws SQLException {

		// jdbc 객체 선언
		
		PreparedStatement pstmt = null;
		int resultCnt =0;
		
		
		try {
		
		// sql 
		String sql = "update phoneinfo_basic set phoneNumber=?, address=?, email=? regdate=? where name = ?";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, newUniv.getPhoneNumber());
			pstmt.setString(2, newUniv.getAddress());
			pstmt.setString(3, newUniv.getEmail());
			pstmt.setString(4, newUniv.getRegdate());
			pstmt.setString(5, newUniv.getName());

			resultCnt = pstmt.executeUpdate();

		String sql1 = "update phoneinfo_basic set major=?, grade=? where fr_name = ?";
			pstmt = conn.prepareStatement(sql1);
						
			pstmt.setString(1, newUniv.getMajor());
			pstmt.setInt(2, newUniv.getGrade());
			pstmt.setString(3, newUniv.getName());
			
			resultCnt += pstmt.executeUpdate();
		

		// ◆ 실수부분수정 : try~catch ㅡ> throws SQLException 로 예외처리 
		// ◆ 실수부분수정 : close()구문 catch블럭에서 처리 ㅡ> finally에서 처리 
		} finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
		
		return resultCnt;
		
	} //univEdit() end


	
		




	public int searchCnt(String searchName, Connection conn) {
		
		Statement stmt = null;
		ResultSet rs = null;
		int rowCnt = 0;
		
		
		try {
			String sql = "select count(*) from phoneinfo_basic where fr_name='"+searchName+"'";
	
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			
			// ◆ 실수부분수정 : rowCnt는 getInt(1)로 가져오기..
			if(rs.next()) {
				rowCnt=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return rowCnt;
	
	} //searchCnt() end


	
	
	
	public PbUniv searchName(String searchName, Connection conn) {
		
		Statement stmt = null;
		ResultSet rs = null;
		PbUniv univ = null;
		
		
		try {
			
			String sql = "select * from phoneinfo_basic b join phoneinfo_univ u on b.idx=u.fr_ref   "
				+ " where fr_name ='"+searchName+"'";

			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			
			// ◆ 실수부분수정 : while ㅡ> if
			if(rs.next()) {
				int idx = rs.getInt("idx");
				String name = rs.getString("fr_name");
				String phonenumber = rs.getString("fr_phonenumber");
				String address = rs.getString("fr_address");
				String email = rs.getString("fr_email");
				String regdate = rs.getString("fr_regdate");
				String major = rs.getString("fr_u_major");
				int grade = rs.getInt("fr_u_year");
				
				univ = new PbUniv(idx, name, phonenumber, address, email, regdate, major, grade);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return univ;
	}

	
} //class end


/*		create table phoneInfo_basic (
	    idx number(6),
	    fr_name varchar2(20) not null,
	    fr_phonenumber varchar2(20) not null,
	    fr_email varchar2(20),
	    fr_address VARCHAR2(20),
	    fr_regdate date default sysdate,    
	    constraint pb_idx_pk primary key(idx)    
	);
	 
	 
	create table phoneInfo_univ (
	    idx number(6),
	    fr_u_major varchar2(20) default 'N' not null,
	    fr_u_year number(1) default 1 not null,
	    fr_ref number(6),
	    constraint pu_idx_pk primary key(idx),
	    constraint pu_fr_u_year_ck check (fr_u_year between 1 and 4),
	    constraint pu_fr_ref_fk foreign key(fr_ref) REFERENCES phoneInfo_basic(idx) on delete cascade   
	);*/





