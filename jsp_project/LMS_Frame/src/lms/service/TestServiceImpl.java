package lms.service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class TestServiceImpl implements Service {

	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		
		String loginType= "학생";
		
		
		request.setAttribute(loginType, loginType);
		
		
		
		return "/WEB-INF/view/test.jsp";
		
	}

}