package com.open.mvc.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.open.mvc.member.service.MemberLoginService;

@Controller
@RequestMapping("/login/login")
public class LoginController {
	
	@Autowired
	MemberLoginService loginService;
	
	
	// 로그인폼
	@RequestMapping(method = RequestMethod.GET)
	public String loginForm() {
		return "member/loginForm";
	};
	
	// 로그인 처리결과
	// @RequestParam으로 사용자 입력정보 받기
	@RequestMapping(method = RequestMethod.POST)
	public String login(
			@RequestParam("uid") String uid, 
			@RequestParam("upw") String upw, 
			Model model
			) {
		
		model.addAttribute("uid", uid);
		model.addAttribute("upw", upw);
		
		return "member/login";
	}
	
}
