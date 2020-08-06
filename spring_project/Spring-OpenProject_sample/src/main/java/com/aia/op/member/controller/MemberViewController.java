package com.aia.op.member.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.aia.op.member.service.MemberViewService;

// 20.08.06
@Controller
public class MemberViewController {
	
	// 서비스 주입받기
	@Inject
	private MemberViewService viewService;
	
	
	// controller 역할은.. 기본데이터 가져오고, view지정하고.. 핵심처리는 Service에게 요청하고..
	// 요청경로 예시 : http://localhost8080/op/member/view/12
	@RequestMapping("/member/view/{idx}") // {idx}는 변수로 인식. 내부에서 받기 위한 변수.  
	public String getMemberInfo( 
			@PathVariable("idx") int idx,
			Model model
			) {

		model.addAttribute("member", viewService.getMemberInfo(idx));
		
		return "member/memberView";
	}
	
	// members/{idx}  : uri 만들때 이런식으로.. 
	// 메서드 방식 표현은 이런식으로.. 
	// GET|members/{idx} 
	// POST|members
	// PUT|members/{idx}
	// DELETE|members/{idx}
	// members/v1/{idx}  버전 표현할때는..

}
