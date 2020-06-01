package EMPMainManager;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

/* 
1. 사원관리 프로그램 _기능
	-입력 
	-수정(이름, 부서번호, 급여) 
	-삭제(사원번호기준)
	-리스트
	-검색(이름기준)
2. 부서관리 프로그램 _기능
	-입력 
	-수정(부서이름, 위치) 
	-삭제(부서번호기준)
	-리스트
	-검색(부서이름 또는 지역 기준)

 */
public class DeptManager {

	public static void main(String[] args) {

		// jdbc 사용 객체 : try~catch~ 밖에서 변수선언
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		Scanner kb = new Scanner(System.in);

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

			
			// 1. 부서관리 프로그램_기능--------------------------------------------------------------

			// -입력
			System.out.println("======부서관리 프로그램 _ 입력======");

			System.out.println("입력할 부서의 -부서번호-를 입력해주세요 >>");
			int deptno = kb.nextInt();
			kb.nextLine();

			System.out.println("입력할 부서의 -부서이름-을 입력해주세요 >>");
			String dname = kb.nextLine();

			System.out.println("입력할 사원의 -지역-을 입력해주세요 >>");
			String loc = kb.nextLine();
			
			
			String sql = "insert into dept    "
					+ " values(?, ?, ?)";
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

			
			
			
			
			// -수정(부서이름, 위치)
			System.out.println("======부서관리 프로그램 _ 수정======");

			System.out.println("수정할 -부서번호-를 입력해주세요 >>");
			int deptno1 = kb.nextInt();
			kb.nextLine();

			System.out.println(deptno1+"번 부서의 수정할 -부서이름-을 입력해주세요 >>");
			String dname1 = kb.nextLine();
			
			System.out.println(deptno1+"번 부서의 수정할 -지역-을 입력해주세요 >>");
			String loc1 = kb.nextLine();


			String sql1 = "Update dept(dname, loc) set(?, ?) where deptno =   "+ deptno1;
			pstmt.setString(1, dname1);
			pstmt.setString(2, loc1);


			int resultCnt1 = pstmt.executeUpdate();

			System.out.println("----------------------------------------");

			if (resultCnt1 > 0) {
				System.out.println("정상적으로 수정 되었습니다.");
				System.out.println(resultCnt1 + "행이 수정되었습니다.");
			} else {
				System.out.println("수정이 되지 않았습니다. 확인 후 재시도 해주세요.");
			}

			System.out.println("----------------------------------------");

			
			
			
			
			// -삭제(부서번호기준)
			System.out.println("======부서관리 프로그램 _ 삭제======");

			System.out.println("삭제할 부서의 -부서번호-를 입력해주세요 >>");
			int deptno2 = kb.nextInt();
			kb.nextLine();

			String sql2 = "delete from dept where deptno =  " + deptno2;

			int resultCnt2 = pstmt.executeUpdate();

			System.out.println("----------------------------------------");

			if (resultCnt1 > 0) {
				System.out.println("정상적으로 삭제 되었습니다.");
				System.out.println(resultCnt1 + "행이 삭제되었습니다.");
			} else {
				System.out.println("삭제가 되지 않았습니다. 확인 후 재시도 해주세요.");
			}

			System.out.println("----------------------------------------");
			
			
			
			
			
			// -리스트
			System.out.println("======부서관리 프로그램 _ 리스트======");

			String sql3 = "select * from dept";
			
			rs = stmt.executeQuery(sql3);
			
			System.out.println("=================================================");
			System.out.println("부서정보");
			System.out.println("-------------------------------------------------");
			System.out.println("부서번호\t부서이름\t지역");			
			System.out.println("-------------------------------------------------");
			
			
			while(rs.next()) {
				System.out.print(rs.getInt("deptno") + "\t");
				System.out.print(rs.getString("dname") + "\t");
				System.out.print(rs.getString("loc") + "\t\t");
			}
			System.out.println("----------------------------------------");

		
			
			
			
			// -검색(부서이름 또는 지역 기준)
			System.out.println("======부서관리 프로그램 _ 검색======");

			System.out.println("검색할 부서의 이름을 입력해주세요 >>");
			String dname4 = kb.nextLine();
			
			String sql4 = "select * from dept where dname = " + dname4;
			
			rs = stmt.executeQuery(sql3);
			
			System.out.println("=================================================");
			System.out.println("부서정보");
			System.out.println("-------------------------------------------------");
			System.out.println("부서번호\t부서이름\t지역");			
			System.out.println("-------------------------------------------------");
			
			
			while(rs.next()) {
				System.out.print(rs.getInt("deptno") + "\t");
				System.out.print(rs.getString("dname") + "\t");
				System.out.print(rs.getString("loc") + "\t\t");
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

		}

	}

}
