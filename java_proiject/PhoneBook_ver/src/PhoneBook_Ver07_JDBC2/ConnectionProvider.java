package PhoneBook_Ver07_JDBC2;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {

	// 드라이버로드처럼 메인에서 처리하면 안되는 이유는..
	// 동시접속에 대한 문제가 생길 수 있기 때문이다.
	// (한번연결되면 끊길 때까지 다음연결은 대기하고 있는 문제가 생긴다.)

	// 별도 클래스로 생성하여 처리선능에 도움..?
	public static Connection getConnection() throws SQLException {
		// 2. 데이터베이스 연결
		Connection conn = null;

		// String url = "jdbc:oracle:thin:@주소:포트:데이터베이스이름";
		// 주소 : localhost or 127.0.0.1
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "scott";
		String pw = "tiger";

		// Connection 객체 생성
		conn = DriverManager.getConnection(url, user, pw);

		return conn;
	}

}
