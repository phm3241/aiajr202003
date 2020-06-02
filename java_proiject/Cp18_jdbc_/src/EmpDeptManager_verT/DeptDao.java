package EmpDeptManager_verT;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DeptDao {
	
	// DAO = Data Acess Object
	// 데이터베이스 처리만 하는 클래스
	// 
	
	// MVC -> Model, View, Controller
	// model -> Service , Dao
	// 데이터베이스 
	
	

	// public void deptEdit() {
	public int deptEdit(Dept newdept, Connection conn) {

		// JDBC 사용 객체
		//Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int resultCnt = 0;

		
		/*
		// 사용자 입력정보 변수
		System.out.println("수정하고자 하는 부서 이름 : ");
		sc.nextLine();
		String searchName = sc.nextLine();
		*/


		try {
			
			// 0. 드라이버 LIB 추가
			// 1. 데이터베이스 드라이버 로드
			// Class.forName(드라이버 클래스 전체이름)
			// Oracle : oracle.jdbc.driver.OracleDriver
			//Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결

			// String url = "jdbc:oracle:thin:@주소:포트:데이터베이스이름";
			// 주소 : localhost or 127.0.0.1
			// String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			//String user = "scott";
			//String pw = "tiger";

			// Connection 객체 생성
			//conn = DriverManager.getConnection(url, user, pw);
			// conn = ConnectionProvider.getConnection(); ㅡ> 

			// 3. SQL 처리
			// Statement or PreparedStatement
			// pstmt = conn.prepareStatement(SQL 문장)

			// 주의 !!!!!
			// 입력된 수정하고자 하는 이름의 데이터가 존재해야 수정 데이터 입력이 시작시킵니다.
			// 그리고 이름의 데이터는 유일조건이 있어야 합니다.
			// 유일조건이 아니라면 여러개의 행에 수정 처리가 이루어집니다.
			// 현재 버전에서는 유일한 값으로 생각하고 처리합니다.

			
			/* 별도메서드로 생성함..
			stmt = conn.createStatement();

			String selectSql = "select * from dept where dname='" + searchName + "'";

			rs = stmt.executeQuery(selectSql);

			int sDeptno = 0;
			String sDname = "";
			String sLoc = "";

			if (rs.next()) {
				sDeptno = rs.getInt("deptno");
				sDname = rs.getString("dname");
				sLoc = rs.getString("loc");
			} else {
				System.out.println("검색하신 이름의 데이터가 존재하지 않습니다.");
				return;
			}
			*/
			
			/* DEPTManager로 이동
			// 사용자 입력정보 변수
			System.out.println("부서 정보를 입력해주세요.");

			System.out.println("부서 번호 : " + sDeptno);
			System.out.println("부서 번호는 수정되지 않습니다.");

			System.out.println("부서 이름 ( " + sDname + "  ) : ");
			String dname = sc.nextLine();

			System.out.println("지역 ( " + sLoc + "  ) : ");
			String loc = sc.nextLine();
			*/
			
			// 공백 입력에 대한 예외처리가 있어야 하나 이번 버전에서는 모두 잘 입력된것으로 처리합니다.

			String sql = "update dept  set  dname=?, loc=? " + " where deptno=?";

			pstmt = conn.prepareStatement(sql);

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, newdept.getDname());
			pstmt.setString(2, newdept.getLoc());
			pstmt.setInt(3, newdept.getDeptno());

			resultCnt = pstmt.executeUpdate();
			

			/*
			if (resultCnt > 0) {
				System.out.println("정상적으로 수정 되었습니다.");
				System.out.println(resultCnt + "행이 수정되었습니다.");
			} else {
				System.out.println("수정이 되지않았습니다. 확인후 재 시도해주세요.");
			}
			 */
			
			// 4. 데이터베이스 연결 종료
			// pstmt.close();
			// conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			// 4. 데이터베이스 연결 종료
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

		}

	}

	
	
	
	//private static void deptDelete(String dname) { //or int deptno
	public int deptDelete(String dname) { //or int deptno

		// JDBC 사용 객체
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int resultCnt =0;


		// 공백 입력에 대한 예외처리가 있어야 하나 이번 버전에서는 모두 잘 입력된것으로 처리합니다.

		try {
			// 2. 데이터베이스 연결

			// Connection 객체 생성
			// conn = DriverManager.getConnection(url, user, pw);
			conn = ConnectionProvider.getConnection();

			String sql = "delete from dept  where dname=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dname);

			resultCnt = pstmt.executeUpdate();
			
			
			/*
			if (resultCnt < 1) {
				System.out.println("삭제할 정보가 검색 결과가 없습니다.");
			} else {
				System.out.println(resultCnt + "행이 삭제 되었습니다.");
			}

			System.out.println("=================================");
			 */
			
			
			// 4. 데이터베이스 연결 종료
			// pstmt.close();
			// conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			// 4. 데이터베이스 연결 종료
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

		}
		
		return resultCnt;
	}

	public static void deptSearch(String name) {

		// JDBC 사용 객체
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// 사용자 입력정보 변수

		// System.out.println("검색하고자 하는 부서이름 : ");
		//sc.nextLine();
		//String searchName = sc.nextLine();

		// 공백 입력에 대한 예외처리가 있어야 하나 이번 버전에서는 모두 잘 입력된것으로 처리합니다.

		List<Dept>
		
		try {
			// 0. 드라이버 LIB 추가
			// 1. 데이터베이스 드라이버 로드
			// Class.forName(드라이버 클래스 전체이름)
			// Oracle : oracle.jdbc.driver.OracleDriver
			//Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결

			// String url = "jdbc:oracle:thin:@주소:포트:데이터베이스이름";
			// 주소 : localhost or 127.0.0.1
			// String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			// String user = "scott";
			// String pw = "tiger";

			// Connection 객체 생성
			// conn = DriverManager.getConnection(url, user, pw);
			conn = ConnectionProvider.getConnection();

			// 3. SQL 처리
			// Statement or PreparedStatement
			// pstmt = conn.prepareStatement(SQL 문장)

			// Mysql
			// "SELECT * FROM dept WHERE dname LIKE ?"
			// psmt.setString(1, "%"+name+"%");

			// Oracle
			// select * from dept where dname like '%'||?||'%'

			String sql = "select * from dept  where dname like '%'||?||'%' or  loc like '%'||?||'%'";
			// String sql = "select * from dept where dname=?";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, name);
			rs = pstmt.executeQuery();

			int resultCnt = 0;
			System.out.println("검색 결과");
			System.out.println("=======================================================================");
			
			while (rs.next()) {
				
				//System.out.print(rs.getInt("deptno") + "\t");
				//System.out.printf("%15s", rs.getString("dname") + "\t");
				//System.out.printf("%15s", rs.getString("loc") + "\n");
				//resultCnt++;
				
				Dept d=new Dept(rs.getInt("deptno"), rs.getString("dname"), rs.getString("loc"));
						
			}
			
			//if (resultCnt < 1) {
				//System.out.println("검색 결과가 없습니다.");
			}

			//System.out.println("=======================================================================");

			// 4. 데이터베이스 연결 종료
			// pstmt.close();
			// conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			// 4. 데이터베이스 연결 종료
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

		}

	}

//	private static void deptInsert(Dept dept) {
	public int deptInsert(Dept dept) {

		// JDBC 사용 객체
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int resultCnt = 0;
		
		/*DEPTManager쪽으로 이동
		// 사용자 입력정보 변수
		System.out.println("부서 정보를 입력해주세요.");

		System.out.println("부서번호 : ");
		int deptno = sc.nextInt();
		System.out.println("부서이름 : ");
		sc.nextLine();
		String dname = sc.nextLine();
		System.out.println("지역 : ");
		String loc = sc.nextLine();
		 */
		
		// 공백 입력에 대한 예외처리가 있어야 하나 이번 버전에서는 모두 잘 입력된것으로 처리합니다.

		try {
			/*
			// 0. 드라이버 LIB 추가
			// 1. 데이터베이스 드라이버 로드
			// Class.forName(드라이버 클래스 전체이름)
			// Oracle : oracle.jdbc.driver.OracleDriver
			//Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. 데이터베이스 연결

			// String url = "jdbc:oracle:thin:@주소:포트:데이터베이스이름";
			// 주소 : localhost or 127.0.0.1
			String url = "jdbc:oracle:thin:@localhost:1521:orcl";
			String user = "scott";
			String pw = "tiger";

			*/
			
			// Connection 객체 생성
			// conn = DriverManager.getConnection(url, user, pw);
			conn = ConnectionProvider.getConnection();

			
			// 3. SQL 처리
			// Statement or PreparedStatement
			// pstmt = conn.prepareStatement(SQL 문장)

			String sql = "insert into dept " + " (deptno, dname, loc) " + " values (?, ?, ?)";

			/*
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deptno);
			pstmt.setString(2, dname);
			pstmt.setString(3, loc);
			*/
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dept.getDeptno());
			pstmt.setString(2, dept.getDname());
			pstmt.setString(3, dept.getLoc());

			resultCnt = pstmt.executeUpdate();

			/*
			if (resultCnt > 0) {
				System.out.println("정상적으로 입력 되었습니다.");
				System.out.println(resultCnt + "행이 입력되었습니다.");
			} else {
				System.out.println("입력이 되지않았습니다. 확인후 재 시도해주세요.");
			}

			*/
			
			// 4. 데이터베이스 연결 종료
			// pstmt.close();
			// conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			// 4. 데이터베이스 연결 종료
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

		}
		
		return resultCnt;

	}

	public List<Dept> deptList() {
		
		// 데이터 전송을 하기 위해서 Dept타입의 List를 만들고, 여기에 정보를 담아서 전송한다.?
		
		
		// VO : Value Object , read only, getter메서드만 존재
		// 		ex. DB에 있는 테이블을 그냥 참조 또는 출력만한다.라고하면 vo처리
		// DTO : Data Transfer Object, getter/setter, toString, equals 
		// 		ex. 자바프로그램에서 수정해야한다.(사용자입력 등) 라고하면 DTO 
		
		// JDBC 사용 객체
		Connection conn = null;
		Statement stmt = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		
		// Dao 클래스 추가
		// 하나의 행을 dept라는 객체형식으로 저장하고, 이것을 List에 넣어주게되면
		// 테이블형식과 같아진다. 이대로 데이터를 전송
		// 반환하기 위한 리스트 객체. 
		
		List<Dept> deptList= new ArrayList<>();
		

		// 공백 입력에 대한 예외처리가 있어야 하나 이번 버전에서는 모두 잘 입력된것으로 처리합니다.

		try {
			// 2. 데이터베이스 연결
			conn = ConnectionProvider.getConnection();

			String sql = "select * from dept  order by dname";

			stmt = conn.createStatement();

			rs = stmt.executeQuery(sql);

			
			while (rs.next()) {
				
				Dept dept = new Dept(
						rs.getInt("deptno"), 
						rs.getString("dname"), 
						rs.getString("loc"));
				
				deptList.add(dept);
				
//				System.out.print(rs.getInt("deptno") + "\t");
//				System.out.printf("%15s", rs.getString("dname") + "\t");
//				System.out.printf("%15s", rs.getString("loc") + "\n");
//				resultCnt++;
			}

			System.out.println("=======================================================================");
			

			// 4. 데이터베이스 연결 종료
			// pstmt.close();
			// conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			// 4. 데이터베이스 연결 종료
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			}

		}
		return deptList;
		// 리스트를 반환. 
		

	}




	public int deptSearchCnt(String searchName, Connection conn) {
		
		// Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int rowCnt = 0;
		
		// conn = ConnectionProvider.getConnection();
		String sql = "select count(*) from dept where dname=? ";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, searchName);

		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			rowCnt =rs.getInt(1);
		}
		
		return rowCnt;
	}
	

	public Dept deptSearchName(String searchName, Connection conn) {
		
		Dept dept = null;
		// Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		// conn = ConnectionProvider.getConnection();
		String sql = "select * from dept where dname=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, searchName);
		
		rs = pstmt.executeQuery();
		
		// 행이 존재한다면, 인스턴스 하나 생성. 
		if(rs.next()) {
			dept = new Dept(rs.getInt(1), rs.getString(2), rs.getString(3));
		}
		
		// 인스턴스 반환
		return dept;
		
	}
		
		
		
}