package com.open.mvc.register;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.open.mvc.register.model.RegisterRequest;

@Controller
@RequestMapping("/reg/register")
public class RegisterController {
	
	// 회원가입폼 
	@RequestMapping(method=RequestMethod.GET)
	public String regForm() {
		return "reg/regForm";
	};

	// 회원가입처리결과 
	// 커맨드 객체로 사용자 입력정보 받기. 
	@RequestMapping(method=RequestMethod.POST)
	public String reg(RegisterRequest register, Model model) {
		
		String uid = register.getUid();
		String upw = register.getUpw();
		String uname = register.getUname();
		MultipartFile uphoto = register.getUphoto();
		
		String fileName = uphoto.getOriginalFilename();
		long fileSize = uphoto.getSize();
		
		model.addAttribute("uid",uid);
		model.addAttribute("upw",upw);
		model.addAttribute("uname",uname);
		model.addAttribute("uphoto",fileName + "("+fileSize+")");
		
		return "reg/register";
	};
	
};
