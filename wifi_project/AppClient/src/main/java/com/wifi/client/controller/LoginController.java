package com.wifi.client.controller;

import java.util.HashMap;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.wifi.client.service.KakaoLoginService;

@Controller
public class LoginController {
	
    @Autowired
    private KakaoLoginService kakao;
    
	@GetMapping
	public String index() {
		//return "Member RestFul API";
		return "index";
	}
    
    @RequestMapping("/login")
	public String login(@RequestParam("code") String code, HttpSession session) {
    	
    	String html="";
    	
    	System.out.println("controller code : " + code);
	    String access_Token = kakao.getAccessToken(code);
	    System.out.println("controller access_token : " + access_Token);
	    
	    HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
	    System.out.println("login Controller userInfo: " + userInfo);
	    
	    // 클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	    if (userInfo.get("email") != null) {
	        session.setAttribute("userId", userInfo.get("email"));
	        session.setAttribute("access_Token", access_Token);
	    }
	    
	    html += "<h1>userID. email : "+userInfo.get("email")+"</h1>";
	    html += "<h1>access_Token : "+access_Token+"</h1>";
	    return "index";
	}
    
	/* 로그인 할 때 세션에 넣어두었던 토큰을 꺼내서 로그아웃 메소드를 실행 */
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
	    kakao.kakaoLogout((String)session.getAttribute("access_Token"));
	    session.removeAttribute("access_Token");
	    session.removeAttribute("userId");
	    
	    return "index";
	}


    
    
    
    
}

	

