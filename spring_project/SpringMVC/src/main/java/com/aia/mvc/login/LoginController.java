package com.aia.mvc.login;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.aia.mvc.login.model.LoginRequest;

// @Controller 이거 안쓰면 web.xml에 명시적으로 등록해주어야한다. 
@Controller
@RequestMapping("/login/login")   // http://localhost:8080/mvc/login/login
class LoginController {
	
	// get 방식의 요청에 대한 처리 : 로그인 폼 페이지를 보여준다. 
	// get 방식으로 지정해두었기 떄문에 post 방식으로 들어오면 오류가 나게된다.
	// 오류페이지 : HTTP 상태 405 – 허용되지 않는 메소드. Request method 'POST' not supported
	@RequestMapping(method = RequestMethod.GET)
	public String getLoginForm() {
		return "login/loginForm";
		//  /WEB_INF/views/login/loginForm.jsp 이 경로를 찾아가게 된다. 
	};
	
	
	// Post 방식의 요청에 대한 처리 
	@RequestMapping(method = RequestMethod.POST)
	public String login(HttpServletRequest request, 
						@RequestParam("uid") String userId, 
						@RequestParam("upw") String userPw,
						@ModelAttribute("login") LoginRequest loginRequest
						) {
		
		String uid= request.getParameter("uid");
		String upw= request.getParameter("upw");

		// 방법1: HttpServletRequest 객체로 현재 요청정보를 받아오기. 
		// - 매개변수로 HttpServletRequest를 받으면, 
		//   현재 요청정보를 담은 request 객체를 받을 수 있다. (form 태그에 입력한 사용자 입력정보)
		System.out.println("--HttpServletRequest로 요청정보 받기-------------------");
		System.out.println("uid :" + uid);
		System.out.println("upw :" + upw);
		
		
		// 방법2: @RequestParam 을 통해서 현재 요청정보의 파라미터값을 받을 수 있다.
		System.out.println("--@RequestParam로 요청정보 받기-------------------");
		System.out.println("userId :" + userId);
		System.out.println("userPw :" + userPw);

		
		// 방법3: 파라미터로 받을 내용들이 많다면, 커맨드 객체로 받을 수 있다. 
		// @ModelAttribute("login") 어노테이션을 활용해서 이름을 지정해줄 수 있다. 
		// 바인딩 : request.setAttribute() 를 자동으로 해주는 것
		System.out.println("--커맨드 객체로 요청정보 받기-------------------");
		System.out.println("loginRequest.getUid :" + loginRequest.getUid());
		System.out.println("loginRequest.getUpw :" + loginRequest.getUpw());
		
		
		
		return "login/login";
		//  /WEB_INF/views/login/login.jsp 이 경로를 찾아가게 된다. 
		
	}
	
	
	
	
	
	
}
