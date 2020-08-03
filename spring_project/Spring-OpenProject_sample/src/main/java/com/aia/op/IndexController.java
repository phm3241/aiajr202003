package com.aia.op;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// Spring MVC의 Controller 클래스 선언을 단순화. 
// 스프링 컨트롤러, 서블릿을 상속할 필요가 없으며, @Controller로 등록된 클래스 파일에 대한 bean을 자동으로 생성해준다(component-scan 이용)
@Controller
public class IndexController {
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}

}
