package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbc.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;
import member.model.MemberListView;
import service.Service;

public class MemberGetInfoServiceImpl implements Service {

	// Dao 가져오기
	private MemberDao dao;


	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
	
		Member memberInfo = new Member();
		
		int resultCnt = 0;
		int resultCode = 0;
		
		String id = request.getParameter("uid");
		String pw = request.getParameter("upw");
		
		Connection conn = null;
		
		try {
			
			conn = ConnectionProvider.getConnection();
			dao = MemberDao.getInstance();

			
			// 아이디-비밀번호 일치 하는지 확인
			boolean checkIdPw = dao.checkIdPw(conn, id, pw);
			
			
			if(checkIdPw) {

				// 일치하면 원본정보 가져오기
				memberInfo = dao.selectMemberInfo(conn, id);
				
				if(memberInfo == null) {
					resultCode = -1;  //회원정보 가져오기 - 처리오류
					
				} else {
					resultCode = 1;   //회원정보 가져오기 - 정상처리
				}
				
			} else {
				resultCode = -2;   //아이디-비밀번호 불일치
			}
			
			
			
			
			// 정보 수정 : 멤버 객체 삭제, 멤버 객체 수정
			
			
			

			// System.out.println("checkIdPw : "+checkIdPw);
			// System.out.println("resultCnt : "+resultCnt);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		//원본 회원정보 ㅡ> 속성에 저장
		request.setAttribute("memberInfo", memberInfo);
		//수정처리 결과코드 ㅡ> 속성에 저장 
		request.setAttribute("resultCode", resultCode);
			
		
		
	
		
		
		
		return "/WEB-INF/views/member/editForm.jsp";
	}

	
}