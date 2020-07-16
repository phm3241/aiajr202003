package controller;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service;


public class FrontController_before extends HttpServlet {

	
	// 1.http의 요청을 받는다. get이나 post로 들어와도 처리될 수 있도록.. 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
		
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
		
		
	}
	
	
	// 외부에서 실행하지 못하고, 사용자 요청에 따라 doGet, doPost에서 실행되도록
	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 2. 사용자 요청 파악 : request 객체를 이용
		// request.getParameter(name);
		// request.getRequestURL();
		// request.getRequestURI(); ★★★★★
		
		// String type = request.getParameter("type");
		// System.out.println("요청 파악 : " +type);
		
		String type = null;
		String command = request.getRequestURI();
		
		System.out.println(command);
		System.out.println(command.indexOf(request.getContextPath()));
		
		
		// ContextPath 경로가 있는지 확인 후 /fc/date ㅡ> /fc (컨텍스트 경로) 부분 잘라내기
		if(command.indexOf(request.getContextPath()) == 0 ) {
			type = command.substring(request.getContextPath().length());
		}
		
		//   http://localhost:8080/fc/greeting  이렇게 요청이 들어오면,  ㅡ> /greeting이 사용자 요청사항.  
		//   http://localhost:8080/fc/date  이렇게 요청이 들어오면,  ㅡ> /date이 사용자 요청사항.  

		
		
		// 3. 핵심 처리 : 기능 수행
		// 각각 요청에 따르는 다른 결과 뷰를 보여줄 수 있다. 
		//   ㅡ>  FrontController.java에 있던 viewPage처리를 별도 Class로 빼서 처리한다. 

		Object resultObj = null;
		Service  service = null;

		String page = "/WEB-INF/views/simple_view.jsp";

		
		// /WEB-INF/views/ 로 하면, 
		// 외부 브라우저에서는 안보이는데, 서버가 실행하는 톰캣내부 시점에서는 이경로의 index 같은 views이 보인다.
		// jsp는 외부에 보여지지 않는다.
		if(type == null || type.equals("/greeting")) {
			resultObj = "안녕하세요";
			page = "/WEB-INF/views/view01.jsp";
			
		} else if(type.equals("date")) {
			resultObj = new Date();
			page = "/WEB-INF/views/view02.jsp";
			
		} else if(type.equals("/")) {
			page = "/WEB-INF/views/index.jsp";
			
		} else {
			resultObj = "Invalid Type";
		}
		System.out.println("핵심 처리결과  : " +resultObj);

		
		
		// 4. 결과 데이터를 속성에 저장 : view 페이지에 공유(전달)
		request.setAttribute("result", resultObj);
		System.out.println("속성에 저장");
		
		
		// 5. 포워딩
		// new로 객체 만드는 것이 아니라, 매개변수로 객체를 대신 만들어주는 패턴? 
		// 이 경로가 실행되는 시점은 서버..? 이므로 컨텍스트 경로가 필요없이 내부 경로사용. 
		// RequestDispatcher dispatcher = request.getRequestDispatcher("/simple_view.jsp");
		
		// 각각 요청에 따르는 다른 결과 뷰를 보여줄 수 있다. 
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);
		
		
		
	}
	
	
	
	
	
	
	
	
	

}
