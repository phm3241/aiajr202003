package service;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DateServiceImpl implements Service {

	
	// FrontController.java에 있던 viewPage처리를 별도 Class로 빼서 처리한다. 
	
	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		// viewpage 저장
		String viewPage = "/WEB-INF/views/view02.jsp";
		
		// 응답 데이터 처리
		Date now = new Date(); 
		
		
		// request 속성에 저장
		request.setAttribute("result", now);
		
		
		return viewPage;
	}

}
