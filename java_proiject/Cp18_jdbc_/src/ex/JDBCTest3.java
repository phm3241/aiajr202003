package ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCTest3 {

	public static void main(String[] args)  {
		
		
		Connection conn=null;
		ResultSet rs=null;
		
		// 1. DB드라이버 로드
		try {
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
			// Statement : Connection의 createStatement()메서드는 Statement객체를 반환한다.
			Statement stmt = conn.createStatement();
			
			
			Scanner kb=new Scanner(System.in);
			
			System.out.println("회원의 이름을 입력해주세요 >>");
			String searchName = kb.nextLine();
			
			// sql문을 +로 연결해서 작성할 경우, 문장 끝날 때 뒤에 공백을 주어야한다. 안그러면 뒷문장과 바로 연결되어 오류발생.
//			String sql = "select * from dept order by deptno";
//			String sql = "select empno, ename, sal from emp where deptno=20";
			String sql1 = "select o.orderid, c.name, b.bookname from customer c, book b, orders o  "
					+ " where c.custid=o.custid and o.bookid=b.bookid  "
				    + " and c.name='"+searchName+"'"; 
			

			
			// Select의 결과는 ResultSet이 받는다. 
			// executeQuery(sql문) ㅡ> ResultSet반환
			rs = stmt.executeQuery(sql1);
			
			
			
			
			System.out.println("판매 리스트");
			System.out.println("---------------------------------------------");
			System.out.println("판매아이디\t회원이름\t책이름");			
			System.out.println("---------------------------------------------");
			
			// ResultSet : next() ㅡ> 행의 존재 유무 확인 (커서의 개념이다)
			while(rs.next()) {
//				System.out.print(rs.getInt("deptno"+"\t"));
//				System.out.print(rs.getString("dname"+"\t"));
//				System.out.print(rs.getString("loc"+"\n"));
				
//				System.out.print(rs.getInt(1) +"\t");
//				System.out.print(rs.getString(2)+"\t");
//				System.out.print(rs.getString(3)+"\n");
				
//				System.out.print(rs.getInt(1) +"\t");
//				System.out.print(rs.getString(2)+"\t");
//				System.out.print(rs.getInt(3) +"\n");

				System.out.print(rs.getInt(1) +"\t");
				System.out.print(rs.getString(2)+"\t");
				System.out.print(rs.getString(3) +"\n");
				
				
				
				
				
			}
			
			rs.close();
			stmt.close();
						
			
			// commit : 처리완료
			conn.commit();
			
			// 4.close
			// conn.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
 
} //class end
