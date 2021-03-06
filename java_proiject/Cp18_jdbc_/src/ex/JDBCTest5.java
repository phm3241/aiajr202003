package ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTest5 {

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
			String sql = "select * from dept where deptno=?";
			pstmt = conn.prepareStatement(sql);

			// 변수 데이터 설정
			pstmt.setInt(1, 10);

			rs = pstmt.executeQuery();

			System.out.println("부서 리스트");
			System.out.println("===================================================");

			// ResultSet ㅡ> 결과참조
			// 결과가 행단위로 여러행이 나오는데, ResultSet의 next()메서드로 행단위로 출력가능
			while (rs.next()) {
				System.out.print(rs.getInt("deptno") + "\t");
				System.out.print(rs.getString("dname") + "\t");
				System.out.print(rs.getString("loc") + "\n");
			}
			System.out.println("===================================================");

			
			
			// 4. 데이터베이스 연결 종료
			
			// finally 에서 처리해주었으므로..
			// rs.close();
			// pstmt.close();
		    // conn.close();

			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {  
			
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
