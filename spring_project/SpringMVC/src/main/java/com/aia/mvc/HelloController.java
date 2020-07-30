package com.aia.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

	@RequestMapping("/hello")
	public String hello(Model model) {
		
		// 공유할 수 있는 모델객체 만들어서 매개변수에 넣어주는 것이 가능하다. new로 만들지 않고도.  
		model.addAttribute("msg", "안녕하세요");
		
		return "hello/hello";
		
		// 반환하고 싶은 경로는 /WEB_INF/views/hello.jsp 
		// 뷰 이름 앞뒤로 ViewResolver가 앞의 경로와 /.jsp를 넣어주므로.. 뷰의 이름만 반환하면된다. 
		// hello/hell 라고 폴더표현도 가능하다. 
		
		
	}
}
