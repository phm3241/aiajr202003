package ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JDBCTest5 {
//  [ JDBC 문제 ] 
//	1. EMP 테이블에 새로운 사원 정보를 입력하는 프로그램을 작성해보자.
//	2. EMP 테이블의 모든 데이터를 출력하는 프로그램을 작성해보자.
//	3. EMP 테이블에 서 “SCOTT” 사원의 급여(sal) 정보를 1000으로 바꾸는 프로그램을 작성해보자.
//	4. EMP 테이블에 서 “SCOTT” 이름으로 검색한 결과를 출력하는 프로그램을 작성해보자.
//	5. 모든 사원정보를 출력하되 부서정보를 함께 출력하는 프로그램을 작성해보자.
	
	
	public static void main(String[] args)  {
		
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;

		
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
			
			
			
//			[문제 1]  EMP 테이블에 새로운 사원 정보를 입력하는 프로그램을 작성해보자.
//
//			String sql1 = "insert into emp (empno, ename, job, sal, deptno)  "
//					+ " values (1111, '박지성', 'design', 4000, 10)";
//			
//			int resultCnt = stmt.executeUpdate(sql1);
//			
//			System.out.println(resultCnt + "개 행이 입력되었습니다.");
//			
			

			
			
			
//			[문제 2]  EMP 테이블의 모든 데이터를 출력하는 프로그램을 작성해보자.
			
			String sql2 = "select * from emp";
			
			// Select의 결과는 ResultSet이 받는다. 
			// executeQuery(sql문) ㅡ> ResultSet반환
			rs = stmt.executeQuery(sql2);
			
			
			System.out.println("==========================================================================================");
			System.out.println("사원정보");
			System.out.println("------------------------------------------------------------------------------------------");
			System.out.println("사원번호\t사원이름\t직급\t\t관리자\t입사일\t\t급여\t성과급\t부서번호");			
			System.out.println("------------------------------------------------------------------------------------------");
			
			
			
			// ResultSet : next() ㅡ> 행의 존재 유무 확인 (커서의 개념이다)
			while(rs.next()) {
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

			
			
			
			
//			[문제 3]  EMP 테이블에서 “SCOTT” 사원의 급여(sal) 정보를 1000으로 바꾸는 프로그램을 작성해보자.
//			String sql3 = "Update emp set sal=1000 where ename='SCOTT' ";
//			
//			int resultCnt = stmt.executeUpdate(sql3);
//			
//			System.out.println(resultCnt + "개 행이 입력되었습니다.");
			
			
			
			
//			[문제 4]  EMP 테이블에서 “SCOTT” 이름으로 검색한 결과를 출력하는 프로그램을 작성해보자.
			
		    String sql4 = "Select * from emp where ename= 'SCOTT'  ";
		    
			rs = stmt.executeQuery(sql4);

			System.out.println("==========================================================================================");
			System.out.println("SCOTT의 정보");
			System.out.println("------------------------------------------------------------------------------------------");
			
			
			while(rs.next()) {
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
			
			
			
//			[문제 5]  모든 사원정보를 출력하되 부서정보를 함께 출력하는 프로그램을 작성해보자.
			
			String sql5 = "select * from emp e, dept d where e.deptno=d.deptno  ";
			
			rs = stmt.executeQuery(sql5);
			
			System.out.println("==========================================================================================");
			System.out.println("사원정보 및 부서정보");
			System.out.println("------------------------------------------------------------------------------------------");
			System.out.println("사원번호\t사원이름\t직급\t\t관리자\t입사일\t\t급여\t성과급\t부서번호\t부서이름\t지역명");			
			System.out.println("------------------------------------------------------------------------------------------");
			
			
			
			while(rs.next()) {
				System.out.print(rs.getInt("empno") + "\t");
				System.out.print(rs.getString("ename") + "\t");
				System.out.print(rs.getString("job") + "\t\t");
				System.out.print(rs.getInt("mgr") + "\t");
				System.out.print(rs.getDate("hiredate") + "\t\t");
				System.out.print(rs.getInt("sal") + "\t");
				System.out.print(rs.getInt("comm") + "\t");
				System.out.print(rs.getInt("deptno") + "\t");				
				System.out.print(rs.getString("dname") + "\t");
				System.out.print(rs.getString("loc") + "\n");				
			}
			
			
			System.out.println("------------------------------------------------------------------------------------------");

			
			
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
