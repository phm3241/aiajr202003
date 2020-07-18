package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import jdbc.ConnectionProvider;
import member.dao.MemberDao;
import member.model.CookieBox;
import service.Service;

public class MemberLoginServiceImpl implements Service {

	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {

		MemberDao dao;
		
		// 1. request 객체로 사용자 요청정보 받기
		// 공백삭제해주기
		String uid = request.getParameter("uid").trim();
		String upw = request.getParameter("upw").trim();
		String remember = request.getParameter("remember");
		
		String rediectUri = request.getParameter("redirecUri");
		
		String cookieName = "uid";
		String cookiePath = request.getContextPath();
		
		// 체크가 null이 아니라면, 위에서 받아온 데이터 쿠키객체 생성 ㅡ> 쿠키박스에 저장하기
		// 체크가 null이면, 새로운 쿠키생성 x, 기존에 있으면 삭제된다. 
		if(remember !=null){
			response.addCookie(CookieBox.createCookie(cookieName, uid, cookiePath, 60*60*24*365));
		} else {
			response.addCookie(CookieBox.createCookie(cookieName, uid, cookiePath, 0));
			
		}
		
		
		
		Connection conn = null;
		
		// 로그인 체크를 위한 변수설정
		boolean loginCheck = false;
		
		
		try {
			
			conn = ConnectionProvider.getConnection();
			dao = MemberDao.getInstance();
			
			// dao : 아이디, 패스워드 일치 확인
			loginCheck = dao.checkIdPw(conn, uid, upw);
			
			if(loginCheck) {
				request.getSession()
				session.setAttribute("loginInfo", loginCheck);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		System.out.println("uid :"+uid);
		System.out.println("upw :"+upw);
		System.out.println("remember :"+remember);
		System.out.println("cookiePath :"+cookiePath);
		System.out.println("id.pw확인결과 check :"+loginCheck);
		
		
		
		// 아이디를 속성에 저장
		request.setAttribute("uid", uid);
		// 로그인 성공여부 속성에 저장
		request.setAttribute("login", loginCheck);
		
		
		
		return "/WEB-INF/views/member/login.jsp";
	}

}