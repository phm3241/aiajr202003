package EMPMainManager;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class DeptManager {

	// jdbc 사용 객체 : try~catch~ 밖에서 변수선언
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	Scanner kb = new Scanner(System.in);

	// 1. 부서관리 프로그램_기능--------------------------------------------------------------

	// 입력
	// 메서드--------------------------------------------------------------------------
	public void deptInsert() {

		System.out.println("======부서관리 프로그램 _ 입력======");

		System.out.println("입력할 부서의 -부서번호-를 입력해주세요 >>");
		int deptno = kb.nextInt();
		kb.nextLine();

		System.out.println("입력할 부서의 -부서이름-을 입력해주세요 >>");
		String dname = kb.nextLine();

		System.out.println("입력할 사원의 -지역-을 입력해주세요 >>");
		String loc = kb.nextLine();

		try {

			// 1. 데이터베이스 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";

			// Connection 객체 생성 : Statement 객체 생성하기 위해..
			conn = DriverManager.getConnection(url, user, pw);

			// 3. SQL처리
			String sql = "insert into dept    " + " values(?, ?, ?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, deptno);
			pstmt.setString(2, dname);
			pstmt.setString(3, loc);

			int resultCnt = pstmt.executeUpdate();

			System.out.println("----------------------------------------");

			if (resultCnt > 0) {
				System.out.println("정상적으로 입력 되었습니다.");
				System.out.println(resultCnt + "행이 입력되었습니다.");
			} else {
				System.out.println("입력이 되지 않았습니다. 확인 후 재시도 해주세요.");
			}

			System.out.println("----------------------------------------");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

		} // finally end

	} // deptInsert() end

	// 수정
	// 메서드(부서이름,위치)--------------------------------------------------------------------------
	public void deptUdate() {

		System.out.println("======부서관리 프로그램 _ 수정======");

		System.out.println("수정할 -부서번호-를 입력해주세요 >>");
		int deptno = kb.nextInt();
		kb.nextLine();

		System.out.println(deptno + "번 부서의 수정할 -부서이름-을 입력해주세요 >>");
		String dname = kb.nextLine();

		System.out.println(deptno + "번 부서의 수정할 -지역-을 입력해주세요 >>");
		String loc = kb.nextLine();

		try {

			// 1. 데이터베이스 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";

			// Connection 객체 생성 : Statement 객체 생성하기 위해..
			conn = DriverManager.getConnection(url, user, pw);

			// 3. SQL처리

			String sql = "Update dept   "
					+ "set dname = ?, loc = ? where deptno = '" + deptno+"'";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dname);
			pstmt.setString(2, loc);

			int resultCnt = pstmt.executeUpdate();

			System.out.println("----------------------------------------");

			if (resultCnt > 0) {
				System.out.println("정상적으로 수정 되었습니다.");
				System.out.println(resultCnt + "행이 수정되었습니다.");
			} else {
				System.out.println("수정이 되지 않았습니다. 확인 후 재시도 해주세요.");
			}

			System.out.println("----------------------------------------");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

		} // finally end

	} // deptUdate() end

	// 삭제
	// 메서드(부서번호기준)--------------------------------------------------------------------------
	public void empDelete() {

		System.out.println("======부서관리 프로그램 _ 삭제======");

		System.out.println("삭제할 부서의 -부서번호-를 입력해주세요 >>");
		int deptno2 = kb.nextInt();
		kb.nextLine();
		try {

			// 1. 데이터베이스 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";

			// Connection 객체 생성 : Statement 객체 생성하기 위해..
			conn = DriverManager.getConnection(url, user, pw);

			// 3. SQL처리
			String sql = "delete from dept where deptno =  " + deptno2;
			stmt = conn.createStatement();

			int resultCnt = stmt.executeUpdate(sql);

			System.out.println("----------------------------------------");

			if (resultCnt > 0) {
				System.out.println("정상적으로 삭제 되었습니다.");
				System.out.println(resultCnt + "행이 삭제되었습니다.");
			} else {
				System.out.println("삭제가 되지 않았습니다. 확인 후 재시도 해주세요.");
			}

			System.out.println("----------------------------------------");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

		} // finally end

	} // empDelete()

	// 리스트--------------------------------------------------------------------------
	public void deptPrint() {

		System.out.println("======부서관리 프로그램 _ 리스트======");
		try {

			// 1. 데이터베이스 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";

			// Connection 객체 생성 : Statement 객체 생성하기 위해..
			conn = DriverManager.getConnection(url, user, pw);

			// 3. SQL처리
			stmt = conn.createStatement();
			String sql = "select * from dept";

			rs = stmt.executeQuery(sql);

			System.out.println("=================================================");
			System.out.println("부서정보");
			System.out.println("-------------------------------------------------");
			System.out.println("부서번호\t부서이름\t\t지역");
			System.out.println("-------------------------------------------------");

			while (rs.next()) {
				System.out.print(rs.getInt("deptno") + "\t");
				System.out.print(rs.getString("dname") + "\t\t");
				System.out.print(rs.getString("loc") + "\n");
			}
			System.out.println("-------------------------------------------------");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

		} // finally end

	} // deptPrint() end

	
	
	// 검색(부서이름 또는 지역기준)--------------------------------------------------------------------------
	public void deptSearch() {
		kb.nextLine();
		System.out.println("======부서관리 프로그램 _ 검색======");

		System.out.println("검색할 부서의 이름을 입력해주세요 >>");

		String dname = kb.nextLine();
		
		try {

			// 1. 데이터베이스 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";

			// Connection 객체 생성 : Statement 객체 생성하기 위해..
			conn = DriverManager.getConnection(url, user, pw);

			// 3. SQL처리
			
			stmt = conn.createStatement();
			String sql = "select * from dept where dname ='" + dname + "'";

			rs = stmt.executeQuery(sql);

			System.out.println("=================================================");
			System.out.println("부서정보");
			System.out.println("-------------------------------------------------");
			System.out.println("부서번호\t부서이름\t\t지역");
			System.out.println("-------------------------------------------------");

			while (rs.next()) {
				System.out.print(rs.getInt("deptno") + "\t");
				System.out.print(rs.getString("dname") + "\t\t");
				System.out.print(rs.getString("loc") + "\n");
			}
			System.out.println("-------------------------------------------------");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}

		} // finally end

	} // deptSearch() end

} // class end 
