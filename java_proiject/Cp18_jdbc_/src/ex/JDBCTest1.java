package ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCTest1 {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		
		Connection conn=null;
		
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
		
		// 4.close
		conn.close();
		
		
	}

}
