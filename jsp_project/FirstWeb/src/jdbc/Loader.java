package jdbc;

import java.util.StringTokenizer;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

// 서블릿 만들 때 HttpServlet을 상속해야한다. 
// 드라이버 로드하는데 목적이 있는 클래스. (초기화해주는 클래스)
public class Loader extends HttpServlet {

	// 서블릿 컨테이너가 실행될 때 가장 먼저 실행되는 메서드.(초기화)
	// 이 메서드에 데이터베이스가 로드될 수 있도록 오버라이드.
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		String jdbcDrivers = config.getInitParameter("jdbcDriver");
//		System.out.println(jdbcDrivers);
		
		StringTokenizer st = new StringTokenizer(jdbcDrivers, ",");
		
		
		
		String msg = config.getInitParameter("msg");
		System.out.println(msg);
		
		
		try {
			
			while(st.hasMoreTokens()) {
				
				String driver = st.nextToken();
				
				Class.forName(driver);
				System.out.println(driver + "드라이버 로드 성공 !!!");
				
			}
			
			// StringTokenizer를 사용하여 여러개의 드라이버 로드가 가능하므로
			// 위처럼 가능.. 아래코드 삭제..
			// Class.forName("oracle.jdbc.driver.OracleDriver");
			// System.out.println("Oracle Driver Load !!!!!");
			
			
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("Oracle Driver Load Fail !!!!!");
		}
		
	}
	
	
	
	

}
