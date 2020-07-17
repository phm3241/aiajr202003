package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.ConnectionProvider;
import member.dao.MemberDao;
import member.model.CookieBox;
import service.Service;

public class MemberLoginServiceImpl implements Service {

	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {

		MemberDao dao;
		
		// 아이디, 패스워드 받아오기
		// 공백삭제해주기
		String uid = request.getParameter("uid");
		String upw = request.getParameter("upw");
		String remember = request.getParameter("remember");
		
		
		
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
		boolean check = false;
		
		
		try {
			
			conn = ConnectionProvider.getConnection();
			dao = MemberDao.getInstance();
			
			// dao : 아이디, 패스워드 일치 확인
			check = dao.checkIdPw(conn, uid, upw);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		System.out.println("uid :"+uid);
		System.out.println("upw :"+upw);
		System.out.println("remember :"+remember);
		System.out.println("cookiePath :"+cookiePath);
		System.out.println("id.pw확인결과 check :"+check);
		
		
		
		// 아이디를 속성에 저장
		request.setAttribute("uid", uid);
		// 로그인 성공여부 속성에 저장
		request.setAttribute("login", check);
		
		
		
		return "/WEB-INF/views/member/login.jsp";
	}

}