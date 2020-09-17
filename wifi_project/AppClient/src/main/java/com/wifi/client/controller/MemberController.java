package com.wifi.client.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.wifi.client.model.Member;
import com.wifi.client.service.KakaoLoginService;
import com.wifi.client.service.MemberCheckService;
import com.wifi.client.service.MemberRegService;


@Controller
@RequestMapping("/")
public class MemberController {
	
	@GetMapping
	@RequestMapping("index")
	public String index() {
		//return "Member RestFul API";
		return "index";
	}

	
	/* 카카오로그인 . 로그아웃 */
    @Autowired
    private KakaoLoginService kakao;
	
	/* 회원여부 체크 */
	@Autowired
	MemberCheckService checkMemberService;
	
	/* 회원가입 */
	@Autowired
	MemberRegService regService;
	
    
    
	
	
	
// 카카오 로그인. 로그아웃 관련 ------------------------------------------------------------------------------------
	
	/* 로그인 - 로그인하고 코드 받기 ㅡ> 코드로 엑세스토큰 받기 ㅡ> 액세스토큰으로 사용자정보받기 ㅡ> 사용자정보 세션에 저장 ㅡ> 로그인 완료처리 */
    @RequestMapping("/login")
	public String login(@RequestParam("code") String code, HttpSession session, HttpServletRequest req) {
    	
    	String view ="index";
    	
	    String access_Token = kakao.getAccessToken(code);
	    System.out.println("controller access_token : " + access_Token);
	    
	    HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
	    System.out.println("login Controller loginInfo: " + userInfo);
	    
	    // 클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	    if (userInfo.get("id") != null) {
	    	
	    	String checkId = (String) userInfo.get("id");
	        session.setAttribute("userInfo", userInfo);
	        view = memberCheck(req, checkId);
	        
	    };
	    
	    return view;
	    
	};
    
    
	/* 로그인 할 때 세션에 넣어두었던 토큰을 꺼내서 로그아웃 메소드를 실행 */
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
	    kakao.kakaoLogout((String)session.getAttribute("access_Token"));
	    session.removeAttribute("loginName");
	    session.removeAttribute("loginMidx");
	    session.removeAttribute("loginInfo");
	    session.removeAttribute("access_Token");
	    
	    return "index";
	};
	
	
	
	
	
// 회원확인. 회원가입 관련 --------------------------------------------------------------------------------------------------------	
	
	/* 회원여부 체크 */
	@RequestMapping("/loginCheck")
	public String memberCheck(HttpServletRequest req, String checkId) {
		
		System.out.println("MemberCheck controller");
		System.out.println("checkId : "+checkId);

		// 회원여부 체크 ㅡ> 회원이면 main으로, 회원이 아니면 regMemberForm으로
		return checkMemberService.checkMember(req, checkId);
		
	};
	
	
	/* 회원가입 */
	@RequestMapping("/members")
	public String regMember(HttpServletRequest req, Member memberReq) {
		
		System.out.println("regMember controller");
		System.out.println("매개변수 확인 memberReq : "+memberReq.toString());
		
		regService.regMember(req, memberReq);
		
		return "main";
		
	};
	
	
//	@RequestMapping("/main")
//	private String getMain() {
//		return "main";
//	}
    
	
	
	
	
	
	
	
	
	
}

	

