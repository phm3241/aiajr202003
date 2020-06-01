package ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTest6 {

	public static void main(String[] args) {

		// jdbc 사용 객체 : try~catch~ 밖에서 변수선언
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {

			// 0. 드라이버 LIB 추가

			// 1. 데이터베이스 드라이버 로드
			// class.forName (드라이버 클래스 전체 이름) *전체이름은 패키지 이름 포함하는 전체이름을 말한다.
			// Oracle : oracle.jdbc.driver.OracleDriver (드라이버 클래스 전체이름)

			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결
			// 연결하기 위해 필요한 주소, 사용자명, 비밀번호
			// String url = "jbdc:oracle:thin:@주소:포트:데이터베이스이름";
			// 주소 : localhost or 127.0.0.1


			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";
			// Connection 객체 생성 : Statment 객체 생성하기 위해..
			conn = DriverManager.getConnection(url, user, pw);

			// 3. SQL처리
			// Statement or PretaredStatemenent
			// pstmt = conn.prepareStatement(sql 문장);
			String sql = "insert into dept (deptno, dname, loc) "
					+ " values (?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 70);
			pstmt.setString(2, "마케팅");
			pstmt.setString(3, "서울");

			
			// executeUpdate() 메서드는 처리후 처리된 행의 갯수를 int로 반환하므로..
			int resultCnt = pstmt.executeUpdate();
			
			if(resultCnt > 0) {
				System.out.println("정상적으로 입력 되었습니다.");
				System.out.println(resultCnt +"행이 입력되었습니다.");
			} else {
				System.out.println("입력이 되지 않았습니다. 확인 후 재시도 해주세요.");
			}
			


		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {  
			
			// 4. 데이터베이스 연결 종료

			// 객체가 생성되기 전에 오류가 날 수 있기 때문에 각각 if문으로 예외처리를 해야한다. 
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
			
		} // fianlly end
		

	} // main end
} // class end

















