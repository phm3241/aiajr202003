package test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 응답 처리
// 1. 서블릿 클래스 만들기 위해서는 HttpServlet 클래스를 반드시 상속해야한다.
public class NowServlet extends HttpServlet {

	
	// 2. 요청에 맞는 처리를 위한 메서드를 선택하고 오버라이딩 해준다. 
	// get/now ㅡ> NowServlet 으로 들어오면, 톰캣이 doGet을 호출한다.
	@Override
	protected void doGet(
			HttpServletRequest req, 
			HttpServletResponse resp) 
			throws ServletException, IOException {
		
			// 응답처리 : HTML 문서를 만든다. (응답해줘야하는 데이터를 만들어주면된다.)
			
			resp.setContentType("text/html; charset=utf-8 "); 
			PrintWriter out =  resp.getWriter();
			out.println("<html>");
			out.println("	<head>");
			out.println("		<title>서블릿 테스트</title>");
			out.println("	</head>");
			out.println("	<body>");
			out.println("		<h1>안녕하세요. 서블릿 클래스로 응답 처리된 페이지입니다.</h1>");
			out.println("		<p>현재시간은 : " + new Date() + "</p>");     // 동적으로 만들어지는 부분
			out.println("	</body>");
			out.println("</html>");
		
		
	}

	// post 방식으로 들어와도 get방식으로 처리될 수 있도록. 경로를 하나로 작성
	@Override
	protected void doPost(
			HttpServletRequest req, 
			HttpServletResponse resp) 
			throws ServletException, IOException {
		
			doGet(req, resp);
	}
	
	
	
	
	
}
