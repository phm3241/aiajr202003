package com.wifi.client.service;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wifi.client.dao.MemberDao;
import com.wifi.client.model.Member;

/* 회원가입 */
@Service
public class MemberRegService {

	private MemberDao dao;
	
	@Autowired
	private SqlSessionTemplate template;

	public int regMember(Member memberReq) {
		
		dao = template.getMapper(MemberDao.class);
		HttpSession session = null;
		int result = 0;

		System.out.println("regMember service");
		
		// 회원가입 
		result = dao.regMember(memberReq);
		System.out.println("회원가입 성공여부 확인 : "+result);
		
		// 회원가입 성공 시 ㅡ> 객체 가져와서 세션에 저장
		if(result ==1) {

			Member member = dao.getMember(memberReq.getId());
			session.setAttribute("loginInfo", member);
			session.setAttribute("loginMidx", member.getMidx());
			System.out.println("회원가입 성공시 - 세션 확인 loginInfo : "+session.getAttribute("loginInfo"));
			System.out.println("회원가입 성공시 - 세션 확인 midx : "+session.getAttribute("loginMidx"));
			
		}
		
		return result;
	}
	

	
}
