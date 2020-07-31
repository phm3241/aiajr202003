package com.aia.mvc.header;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HeaderController {
	
	@RequestMapping("/header/getHeader")
	public String getHeader(
			@RequestHeader("referer") String referer,
			Model model
			) {

		// referer : 사용자의 이전페이지 확인용. 로그데이터. 취향 분석해서 아이템추천 활용.
		model.addAttribute("referer", referer);
		
		
		return "/header/getHeader";
	}
	
	

}
