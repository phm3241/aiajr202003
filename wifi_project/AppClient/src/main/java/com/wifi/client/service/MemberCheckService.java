package com.wifi.client.service;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.client.dao.MemberDao;
import com.wifi.client.model.Member;

/* 회원여부 체크 */
@Service
public class MemberCheckService {
	
	private MemberDao dao;
	
	@Autowired
	private SqlSessionTemplate template;

	public String checkMember(String checkId) {
		
		dao = template.getMapper(MemberDao.class);
		
		HttpSession session = null;
		String view = null;
		
		int result = dao.checkMember(checkId);
		
		if(result==1) {
//			Member member = dao.getMember(checkId);
//			session.setAttribute("loginInfo", member);
//			session.setAttribute("loginMidx", member.getMidx());
//			System.out.println("회원. 세션저장값 확인 loginInfo : "+session.getAttribute("loginInfo"));
//			System.out.println("회원. 세션저장값 확인 loginMidx : "+session.getAttribute("loginMidx"));
			view = "main";
			
		} else {
			view = "regMemberFrom";
		}
		
		return view;
	}
	

}
