package ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTest4 {

	public static void main(String[] args)  {
		
		
		Connection conn=null;
		Statement stmt=null;
		
		try {
			
			// 1. DB드라이버 로드
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
			// Statement 
			
			stmt = conn.createStatement();
			
			String sql = "insert into dept (deptno, dname, loc) "
					+ " values (60, 'design', 'jeju')";
			
			int resultCnt = stmt.executeUpdate(sql);
			
			System.out.println(resultCnt + "개 행이 입력되었습니다.");
			
			
			// commit : 처리완료
			conn.commit();
			
			// 4.close
			conn.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}

}
