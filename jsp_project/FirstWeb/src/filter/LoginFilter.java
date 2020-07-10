package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		// FilterChain 은 다음 필터로 보내기 위한 객체로 매개변수로 받는다.
		
		
		
		// 1. 현재 세션 객체를 확인
		
		// 명시적 형변환..ServletRequest는 HttpServletRequest을 상속 받아 만들어진 객체기 때문에..
		HttpServletRequest httpRequest = (HttpServletRequest)request;  
		
		// 현재 세션의 객체 가져오기. request객체의 메서드로.. 
		// .getSession( ) : 현재 세션객체가 있을 때 기존의 세션객체를 반환. 없을 때 새롭게 생성. 
		// .getSession(true) : 무조건 세션 생성 
		// .getSession(false) : 기존객체 반환하거나 없으면 null 반환
		HttpSession session = httpRequest.getSession(false);
		
		
		
		
		// 로그인 유무 확인하는 변수
		boolean login = false;
		
		//  session != null && session.getAttribute("memberInfo") != null 로 코드 줄일 수도 있다.
		if(session != null) {
			if(session.getAttribute("memberInfo") != null) {
				login = true;
			};
		};
		
		
		
		// 로그인 했으면 다음 필터로 이동.
		if(login) {

			chain.doFilter(request, response); 
			
			
		// 로그인 안했으면, 로그인페이지로 이동.. 포워딩 또는 sendRedirect로..
		} else {
			
			// 방법 1: RequestDispatcher객체로 forward 사용하는 방법. 
			// 포워딩할 페이지 경로 : 
			// 현재는 서버 내부에서 처리되므로.. webContent에서 찾아가는 경로로 작성가능..
			// String path="/member/sessionLoginForm.jsp";
			
			// request로 RequestDispatcher 객체 생성
			// RequestDispatcher dispatcher = request.getRequestDispatcher(path); 

			// RequestDispatcher객체로 forward 사용. 경로로 보내준다. 매개변수로 속성전달.
			// 결과 경로 ㅡ> http://localhost:8080/web/mypage/mypage.jsp
			// dispatcher.forward(request, response);
			
			
			
			// 방법 2: HttpServletResponse 객체의 sendRedirect 를 사용할하는 방법. 
			// 포워드 처리는 서버내부에서 처리.. 따라서 컨텍스트 경로가 필요없이..컨텍스트 내부에 있는 서버의 경로만 필요. 
			//sendRedirect는 브라우저에서 처리 하므로 컨텍스트 경로가 필요.. 
			
			// sendRedirect는 클라이언트 쪽에서 다시 요청하도록 하므로, 서버의 경로가 필요하다. ??
			// 결과 경로 ㅡ> http://localhost:8080/web/member/sessionLoginForm.jsp
			HttpServletResponse httpResponse = (HttpServletResponse)response;
			
			String location = httpRequest.getContextPath()+"/member/sessionLoginForm.jsp";
			
			httpResponse.sendRedirect(location);
			
			
			
			
		};
		
	}; //doFilter() end
	
	
	

	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

	};

	
	// 필터 삭제될 때 호출
	@Override
	public void destroy() {

	}
	
		
		
		
		
}
