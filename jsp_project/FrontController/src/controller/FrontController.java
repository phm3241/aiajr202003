package controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DateServiceImpl;
import service.GreetingServiceImpl;
import service.IndexServiceImpl;
import service.NullServiceImpl;
import service.Service;

// 기능하나당
// list = service.ListServiceImpl
// service
// view


public class FrontController extends HttpServlet {

	// 사용자 요청정보를 담는 HashMap을 만든다.
	Map<String, Service> commands = new HashMap<String, Service>();
	
	
	// 기능이 추가될 때마다 초기화 목록에 추가
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		// 1. commandService.properties(외부설정) => Properties
		// 
		//  /index=service.IndexServiceImpl
		// 2. class 정보의 클래스들을 생성 ㅡ> 인스턴스 생성(자동생성)
		// 3. map에 사용자 요청 command와 인스턴스를 저장
		
		
		
		// 1. 외부설정 파일의 내용을 메모리의 데이터로 이동
		
		Properties prop = new Properties();
		
		FileInputStream fis = null;
		
		// 설정파일의 웹경로 : 서버가 시작했을 때의 경로
		String path = "/WEB-INF/commandService.properties";
		
		// 설정파일의 시스템 절대경로
		String configFile = config.getServletContext().getRealPath(path);
		
		
		// 경로 안에 파일이 없서서 문제가 생길 수 있으므로.. 예외처리
		try {
			
			// 파일을 안쪽으로 읽어들어오기 위해서.. FileInputStream.. 절대경로로.. 
			// 데이터를 주고받을 수 있는 연결통로
			fis = new FileInputStream(configFile);
			
			// 프로퍼티 객체로 파일을 읽어온다.
				prop.load(fis);
			
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		// 프로퍼티 객체들을 이터레이터로 키값을 .....
		Iterator itr = prop.keySet().iterator();		
		
		// 외부프로퍼티 파일 잘 읽어들어오는지 출력확인용
		while(itr.hasNext()) {
			// 사용자 요청 URI : Object이기 떄문에 형변환필요
			String command = (String) itr.next();
			
			// 사용자 요청의 처리를 위한 클래스 이름, 정보
			String serviceClassName = prop.getProperty(command);
			
			// System.out.println(command + " = " + serviceClassName);
			
			try {
				
				// 인스턴스 생성을 위한 Class 객체 : Class 객체로 반환해주는 메서드?
				Class serviceClass = Class.forName(serviceClassName);
				
				// 인스턴스 생성 : 어떤 Service인지는 모르지만, 모두 Service 인터페이스를 구현한 클래스이기 때문에..Service로 받기 가능..
				// 다형성 때문에 Service 인터페이스로 받는다.
				Service sevice = (Service) serviceClass.newInstance();
				
				// 이게무슨말이야... ㅠㅠㅠㅠ
				commands.put(command, sevice);
				
				System.out.println(command + " = " + sevice );
				
				
				
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			}
		}
		

		
		
		
		
		
		
		
		/*
		 * commands.put("/", new IndexServiceImpl()); commands.put("/index", new
		 * IndexServiceImpl()); commands.put("/greeting", new GreetingServiceImpl());
		 * commands.put("/date", new DateServiceImpl()); commands.put("/null", new
		 * NullServiceImpl());
		 */
	}


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
		
		System.out.println("command : "+command);
		
		// indexOf : stringValue에서 특정한 문자열의 위치(index)를 반환한다.
		// command(사용자요청URI)에서 컨택스트경로의 인덱스 반환요청.
		System.out.println("command.indexOf(request.getContextPath()):"+command.indexOf(request.getContextPath()));
		
		
		// ContextPath 경로가 있는지 확인 후 /fc/date ㅡ> /fc (컨텍스트 경로) 부분 잘라내기
		if(command.indexOf(request.getContextPath()) == 0 ) {
			type = command.substring(request.getContextPath().length());
		}
		
		//   http://localhost:8080/fc/greeting  이렇게 요청이 들어오면,  ㅡ> /greeting이 사용자 요청사항.  
		//   http://localhost:8080/fc/date  이렇게 요청이 들어오면,  ㅡ> /date이 사용자 요청사항.  

		
		
		// 3. 핵심 처리 : 기능 수행
		// 각각 요청에 따르는 다른 결과 뷰를 보여줄 수 있다. 
		//   ㅡ>  FrontController.java에 있던 viewPage처리를 별도 Class로 빼서 처리한다. 

		// Object resultObj = null;
		// Service service = null;
		
		
		Service service = commands.get(type);
		
		if(service == null) {
			// service = commands.get("null");
			service = new NullServiceImpl();
		}
		

		// String page = "/WEB-INF/views/simple_view.jsp";

		
		// /WEB-INF/views/ 로 하면, 
		// 외부 브라우저에서는 안보이는데, 서버가 실행하는 톰캣내부 시점에서는 이경로의 index 같은 views이 보인다.
		// jsp는 외부에 보여지지 않는다.
		/*
		 * if(type == null || type.equals("/greeting")) { // resultObj = "안녕하세요"; //
		 * page = "/WEB-INF/views/view01.jsp";
		 * 
		 * service = new GreetingServiceImpl();
		 * 
		 * 
		 * } else if(type.equals("/date")) { // resultObj = new Date(); // page =
		 * "/WEB-INF/views/view02.jsp";
		 * 
		 * service = new DateServiceImpl();
		 * 
		 * } else if(type.equals("/") || type.equals("/index")) { // page =
		 * "/WEB-INF/views/index.jsp";
		 * 
		 * service = new IndexServiceImpl();
		 * 
		 * } else { // resultObj = "Invalid Type"; service = new NullServiceImpl();
		 * 
		 * 
		 * }
		 */
		// System.out.println("핵심 처리결과  : " +resultObj);

		
		String page = service.getViewPage(request, response);
		
		
		
		// 4. 결과 데이터를 속성에 저장 : view 페이지에 공유(전달)
		// request.setAttribute("result", resultObj);
		// System.out.println("속성에 저장");
		
		
		// 5. 포워딩
		// new로 객체 만드는 것이 아니라, 매개변수로 객체를 대신 만들어주는 패턴? 
		// 이 경로가 실행되는 시점은 서버..? 이므로 컨텍스트 경로가 필요없이 내부 경로사용. 
		// RequestDispatcher dispatcher = request.getRequestDispatcher("/simple_view.jsp");
		
		// 각각 요청에 따르는 다른 결과 뷰를 보여줄 수 있다. 
		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);
		
		
		
	}
	
	
	
	
	
	
	
	
	

}
