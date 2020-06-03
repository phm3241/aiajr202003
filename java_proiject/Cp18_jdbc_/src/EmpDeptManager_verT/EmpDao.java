package EmpDeptManager_verT;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class EmpDao {
	

	// jdbc 사용 객체 : try~catch~ 밖에서 변수선언
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	Scanner kb = new Scanner(System.in);

	// 1. 사원관리 프로그램_기능--------------------------------------------------------------

	// 입력 메서드--------------------------------------------------------------------------
	public void empInsert() {

		System.out.println("======사원관리 프로그램 _ 입력======");

		System.out.println("입력할 사원의 -사원번호-를 입력해주세요 >>");
		int empno = kb.nextInt();
		kb.nextLine();

		System.out.println("입력할 사원의 -이름-을 입력해주세요 >>");
		String ename = kb.nextLine();

		System.out.println("입력할 사원의 -직급-을 입력해주세요 >>");
		String job = kb.nextLine();

		System.out.println("입력할 사원의 -관리자-를 입력해주세요 >>");
		int mgr = kb.nextInt();
		kb.nextLine();

		System.out.println("입력할 사원의 -입사일-을 입력해주세요 >>");
		String hiredate = kb.nextLine();

		System.out.println("입력할 사원의 -급여-를 입력해주세요 >>");
		int sal = kb.nextInt();
		kb.nextLine();

		System.out.println("입력할 사원의 -성과급-를 입력해주세요 >>");
		int comm = kb.nextInt();
		kb.nextLine();

		System.out.println("입력할 사원의 -부서번호-를 입력해주세요 >>");
		int deptno = kb.nextInt();
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

			
			// 3. sql 로 데이터처리
			String sql = "insert into emp(empno, ename, job, mgr, hiredate, sal, comm, deptno)    "
					+ " values(?, ?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, empno);
			pstmt.setString(2, ename);
			pstmt.setString(3, job);
			pstmt.setInt(4, mgr);
			pstmt.setString(5, hiredate);
			pstmt.setInt(6, sal);
			pstmt.setInt(7, comm);
			pstmt.setInt(8, deptno);

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

	} // empInsert() end

	
	
	
	// 수정 메서드--------------------------------------------------------------------------
	public void empUdate() {

		// -수정(이름, 부서번호, 급여)
		kb.nextLine();

		System.out.println("======사원관리 프로그램 _ 수정======");

		System.out.println("수정할 사원의 이름을 입력해주세요 >>");
		String ename = kb.nextLine();
		System.out.println("ename1 : "+ename);
		
		System.out.println(ename + "사원의 수정할 부서번호를 입력해주세요 >>");
		int deptno = kb.nextInt();
		kb.nextLine();

		System.out.println(ename + "사원의 수정할 급여를 입력해주세요 >>");
		int sal = kb.nextInt();		
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
			
			
			// 3. sql 로 데이터처리
			String sql = "Update emp   "
					+ " set deptno = ?, sal = ? where ename = '" + ename +"'";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, deptno);
			pstmt.setInt(2, sal);
			
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

	} // empUdate() end

	
	
	
	
	// 삭제 메서드(사원번호기준)--------------------------------------------------------------------------
	public void empDelete() {

		System.out.println("======사원관리 프로그램 _ 삭제======");

		System.out.println("삭제할 사원의 사원번호를 입력해주세요 >>");
		int empno = kb.nextInt();
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

			
			// 3. sql 로 데이터처리
			
			String sql = "delete from emp where empno2 = '" + empno+"'";

			pstmt = conn.prepareStatement(sql);

			int resultCnt = pstmt.executeUpdate();
			
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
		
	} // empDelete() end
		
		
		
		
	// 리스트--------------------------------------------------------------------------
	public void empPrint() {		

		try {
			// 1. 데이터베이스 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";

			// Connection 객체 생성 : Statement 객체 생성하기 위해..
			conn = DriverManager.getConnection(url, user, pw);

			
			// 3. sql 로 데이터처리
			stmt = conn.createStatement();

			System.out.println("======사원관리 프로그램 _ 리스트======");

			String sql3 = "select * from emp";
			
			rs = stmt.executeQuery(sql3);

			System.out
					.println("==========================================================================================");
			System.out.println("사원정보");
			System.out
					.println("------------------------------------------------------------------------------------------");
			System.out.println("사원번호\t사원이름\t직급\t\t관리자\t입사일\t\t급여\t성과급\t부서번호");
			System.out
					.println("------------------------------------------------------------------------------------------");

			while (rs.next()) {
				System.out.print(rs.getInt("empno") + "\t");
				System.out.print(rs.getString("ename") + "\t");
				System.out.printf("%6s", rs.getString("job") + "\t\t");
				System.out.printf("%9s", rs.getInt("mgr") + "\t");
				System.out.print(rs.getDate("hiredate") + "\t\t");
				System.out.print(rs.getInt("sal") + "\t");
				System.out.print(rs.getInt("comm") + "\t");
				System.out.print(rs.getInt("deptno") + "\n");

			}
			System.out.println("------------------------------------------------------------------------------------------");
			

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
		
	} //empPrint() end
		
	
	
	
	
		
	// 검색(이름기준)--------------------------------------------------------------------------
	public void empSearch() {	
		// 검색. 패턴검색으로. 
		// 결과 여러개일 수 있으므로, count 
		

		kb.nextLine();
		System.out.println("======사원관리 프로그램 _ 검색======");

		System.out.println("검색할 사원의 이름을 입력해주세요 >>");
		String ename = kb.nextLine();
		
		
		try {
			// 1. 데이터베이스 드라이버 로드
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";

			// Connection 객체 생성 : Statement 객체 생성하기 위해..
			conn = DriverManager.getConnection(url, user, pw);

			
			// 3. sql 로 데이터처리
			stmt = conn.createStatement();

			String sql = "select * from emp where ename = '" + ename+"'";

			rs = stmt.executeQuery(sql);

			System.out
					.println("==========================================================================================");
			System.out.println(ename + " 사원의 정보");
			System.out
					.println("------------------------------------------------------------------------------------------");
			System.out.println("사원번호\t사원이름\t직급\t\t관리자\t입사일\t\t급여\t성과급\t부서번호");
			System.out.println("------------------------------------------------------------------------------------------");

			while (rs.next()) {
				System.out.print(rs.getInt("empno") + "\t");
				System.out.print(rs.getString("ename") + "\t");
				System.out.print(rs.getString("job") + "\t\t");
				System.out.print(rs.getInt("mgr") + "\t");
				System.out.print(rs.getDate("hiredate") + "\t\t");
				System.out.print(rs.getInt("sal") + "\t");
				System.out.print(rs.getInt("comm") + "\t");
				System.out.print(rs.getInt("deptno") + "\n");

			}
			System.out.println("------------------------------------------------------------------------------------------");

			

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
	} // empSearch() end
		

}
