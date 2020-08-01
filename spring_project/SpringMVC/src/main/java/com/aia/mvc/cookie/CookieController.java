package com.aia.mvc.cookie;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;

// Mapping 오류가 나기 때문에 @Controller를 꼭 해주어야 한다. 
@Controller
public class CookieController {
	
	
	@RequestMapping("/cookie/makeCookie")
	public String makeCookie(HttpServletResponse response) {
		// 생선한 쿠키를 전달하기 위해서는 response객체가 필요하므로 매개변수로 받기
		
		// 쿠키생성
		Cookie cookie = new Cookie("uid","cool");
		response.addCookie(cookie);
		
		
		return "/cookie/makeCookie";
	};
	
	@RequestMapping("/cookie/viewCookie")
	public String viewCookie(
				Model model, 
				@CookieValue(value="uid", defaultValue = "no ID") String uid 
				// 서버에 저장하지 않아도되는 정보를 클라이언트 pc에 저장하여 서버의 부하를 줄이는 쿠키
				// @CookieValue를 사용하여 쉽게 쿠키를 받아올 수있다. 
				) {
		
			model.addAttribute("uid", uid);
		
		return "/cookie/viewCookie";
	};
	
	
}
