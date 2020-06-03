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
		// String sql = "select * from phoneinfo_basic b join phoneinfo_com on b.idx=c.fr_ref";
		String sql = "select * from pb_univ_view";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
	
		//(name, phonenumber, address, email, major, grade)
			while(rs.next()) {
				String name = rs.getString("name");
				String phonenumber = rs.getString("phonenumber");
				String address = rs.getString("address");
				String email = rs.getString("email");
				String major = rs.getString("major");
				int grade = rs.getInt("grade");
				
				PbUniv univ = new PbUniv(name, phonenumber, address, email, major, grade);
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
			
			// PbUniv univ = new PbUniv(name, phoneNumber, address, email, major, grade);
			// sql
			String sql = "insert into phoneinfo_basic (name, phoneNumber, address, email) value(?,?,?,?)";
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, univ.getName());
			pstmt.setString(2, univ.getPhoneNumber());
			pstmt.setString(3, univ.getAddress());
			pstmt.setString(4, univ.getEmail());
			
			resultCnt = pstmt.executeUpdate();
			
			
			String sql1 = "insert into phoneInfo_univ (major, grade) values(?,?)";
			pstmt = conn.prepareStatement(sql1);
			
			pstmt.setString(2, univ.getMajor());
			pstmt.setInt(3, univ.getGrade());
			
			resultCnt += pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			
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
			
			e.printStackTrace();
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
		
		
		// 드라이버 연결
		try {
			conn = ConnectionProvider.getConnection();
	
		
		// sql 
		String sql = "select * + from phoneinfo_basic b join phoneinfo_univ on b.idx=u.fr_ref   "
				+ " where fr_name = %||?||%";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, searchname);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			String name = rs.getString("name");
			String phoneNumber = rs.getString("phoneNumber");
			String address = rs.getString("address");
			String email = rs.getString("email");
			String major = rs.getString("major");
			int grade = rs.getInt("grade");
			
			PbUniv univ = new PbUniv(name, phoneNumber, address, email, major, grade);
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
			
			e.printStackTrace();
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

		
		// sql
		String sql = "delete from phoneinfo_basic where name = '"+name+"'";
		
		stmt = conn.createStatement();
		resultCnt = stmt.executeUpdate(sql);
		
		
		String sql1 = "delete from phoneInfo_univ where name = '"+name+"'";
		
		stmt = conn.createStatement();
		resultCnt = stmt.executeUpdate(sql);
			
			
		} catch (SQLException e) {
			
			
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
		
		return resultCnt;
		
	} // univDelete() end
	
	
	
	
	
	
	
	
	
	
	public void univEdit() {
		
		
	}


} //class end