package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.ConnectionProvider;
import model.Emp;

public class EmpDao {
	
	// 기능만 있는 클래스이므로 ==> 싱글톤패턴 (메모리 효율적 활용) 
	
	// 생성자의 접근제어지시자 이용 private
	//  : 외부에서 객체 생성하는 것을 막는다. 
	private EmpDao() {
	}

	// 사용할 인스턴스 하나를 생성 
	//  : 외부에서 인스턴스에 접근할 수 없도록 private 처리
	private static EmpDao dao = new EmpDao();
	
	// EmpDao 인스턴스의 참조값을 반환하는 메서드 
	// 외부에서 인스턴스 생성이 아니라 참조값을 가져다 사용할 수 있도록 public 
	public static EmpDao getInstance() {
		return dao;
	}
	
	
	
	// Connection을 매개변수로 받는 이유: 트랜잭션처리 떄문
	public List<Emp> getEmpList(Connection conn) throws SQLException{
		
		
		Statement stmt = null;
		ResultSet rs = null;
		
		List<Emp> empList = new ArrayList();

		// DB Connection 정보
		String dbUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
		String user = "scott";
		String pw = "tiger";

		

		try {
			
			/* ConnectionProvider */
			// 2. Connection 생성
			// conn = DriverManager.getConnection(dbUrl, user, pw);
			conn = ConnectionProvider.getConnection();
			
			
			
			
			// 3. Statement 생성
			stmt = conn.createStatement();

			String sql = "select * from emp order by ename desc";

			// select의 결과 ResultSet 객체에 담는다.
			rs = stmt.executeQuery(sql);

			// 결과 출력
			while (rs.next()) {
				empList.add(new Emp(rs.getInt("empno"), rs.getString("ename"), rs.getInt("sal"), rs.getString("job")));
			} //while end

		} catch (SQLException ex) {
			// 예외처리

		} finally {
			rs.close();
			stmt.close();
			conn.close();
		}

		
		
		
		return empList;
		
	}
	
	/*
	 구매를 위한 트랜잭션 처리과정 : 하나라도 잘못되었을 떄는, 처리되면 안된다. 
	 진행과정동안  같은 Connection을 가지고 있어야 트랜잭션 처리가 가능하다. 
	 	ㅡ> 매개변수로 Connection 객체를 전달
	 문제가 생길시, rollback 처리. 
	 입력-구매 수정-재고 수정-회원
	 */
	
}
