package ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTest2 {

	public static void main(String[] args)  {
		
		
		Connection conn=null;
		ResultSet rs=null;
		
		// 1. DB드라이버 로드
		// 드라이버로드는 프로그램에서 한번만 로드해줘도 된다.

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			System.out.println("Oracle 드라이버 로드 성공");
			
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";
			
			// 2. 데이터베이스에 접속 
			//  getConnection()는 Connection 객체를 반환하는 메서드 
			// ㅡ> getConnection를 통해서 Connection 객체를 가져오는 것.

			conn = DriverManager.getConnection(url, user, pw);
 
			System.out.println("데이터베이스에 접속했습니다. ");

			
			// 3. sql 로 데이터처리
			// Statement : Connection의 createStatement()메서드는 Statement객체를 반환한다.
			Statement stmt = conn.createStatement();
			
			String sql = "select * from dept order by deptno";
			
			// Select의 결과는 ResultSet이 받는다. 
			// executeQuery(sql문) ㅡ> ResultSet반환
			rs = stmt.executeQuery(sql);
			
			// ResultSet : next() ㅡ> 행의 존재 유무 확인 (커서의 개념이다)
			while(rs.next()) {
//				System.out.print(rs.getInt("deptno") + "\t");
//				System.out.print(rs.getString("dname") + "\t");
//				System.out.print(rs.getString("loc") + "\n");
				
				System.out.print(rs.getInt(1) +"\t");
				System.out.print(rs.getString(2)+"\t");
				System.out.print(rs.getString(3)+"\n");
								
				
			}
			
			rs.close();
			stmt.close();
						
			
			// commit : 처리완료
			conn.commit();
			
			// 4.close
			// conn.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
 
} //class end
