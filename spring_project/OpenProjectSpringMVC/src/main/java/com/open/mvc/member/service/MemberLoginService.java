package com.open.mvc.member.service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.open.mvc.jdbc.ConnectionProvider;
import com.open.mvc.login.model.LoginRequest;
import com.open.mvc.member.dao.MemberDao;
import com.open.mvc.member.model.Member;

@Service
public class MemberLoginService {
	
	@Autowired
	MemberDao dao;
	
	public String login(
			LoginRequest loginRequest,
			HttpSession session,
			HttpServletResponse response
			) {
		
		
		String loginResult = "";
		
		Connection conn = null; 
		
		Member member = null;
		
		
		try {
		
			conn = ConnectionProvider.getConnection();
			
			dao.selectByIdPw(conn, loginRequest.getUid(), loginRequest.getUpw());
			
			System.out.println("LoginService Member : " + member);
		
		
		
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		return null;
	}
	
	
	
	
	
}
