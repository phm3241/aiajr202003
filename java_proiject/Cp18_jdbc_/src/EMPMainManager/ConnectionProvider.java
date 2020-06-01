package EMPMainManager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	
	// 별도 클래스로 생성하여 처리선능에 도움..?
	public static Connection getConnection() {

		// 2. 데이터베이스 연결
		Connection conn=null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "scott";
		String pw = "tiger";

		// Connection 객체 생성 : Statement 객체 생성하기 위해..
		try {
			conn = DriverManager.getConnection(url, user, pw);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return conn;

	}

}
