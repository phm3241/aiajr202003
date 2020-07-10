package listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class TestContextListener implements ServletContextListener {

	// 종료될 때
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("WAS 종료!!!");
	};

	// 시작할 떄 
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("WAS 시작!!!");
		ServletContext context = sce.getServletContext();
		
		// 웹 내부의 경로
		String path = context.getInitParameter("uploadPath");
		
		// 절대경로로 바꿔줌 : 시스템에 쓰기 위해서는 이 절대경로가 필요하다. 
		String realPath = context.getRealPath(path);
		System.out.println(realPath);
	};

};
