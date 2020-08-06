package com.aia.op.member.controller;

import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.aia.op.member.model.Member;
import com.aia.op.member.model.MemberXmlList;
import com.aia.op.member.service.MemberListJsonService;
import com.aia.op.member.service.MemberListService;
import com.aia.op.member.service.MemberListXmlService;

@Controller
public class MemberListController {
	
	@Autowired
	MemberListService listService;
	
	
	// 20.08.06
	@Autowired
	MemberListXmlService xmlService;
	
	
	// 20.08.06
	@Autowired
	MemberListJsonService jsonService;
	
	@RequestMapping("/member/memberList")
	public String getMemberList(
			Model model, 
			HttpServletRequest request, 
			HttpServletResponse response) throws SQLException {
		
		model.addAttribute("listView", listService.getView(request, response));
		return "/member/memberList";
	}
	
	
	// 20.08.06
	@RequestMapping("/member/memberList.Xml")
	@ResponseBody // 반환한 객체 그대로 응답데이터가 된다. 
	public MemberXmlList getMemberXml() {
		return xmlService.getXmlList();
	}
	
	// 20.08.06
	@RequestMapping("/member/memberList.json")
	@ResponseBody // 반환한 객체 그대로 응답데이터가 된다. 
	public List<Member> getMemberJson(){
		return jsonService.getMemberList();
	}
	
	
	
	
	
}
