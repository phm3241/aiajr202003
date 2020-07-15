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

public class MemberDeleteServiceImpl implements Service {

	// Dao 가져오기
	private MemberDao dao;


	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
	
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
			
			// 일치하면 삭제처리
			if(checkIdPw) {
				resultCnt = dao.deleteMember(conn, id);
				
				if(resultCnt == 0) {
					resultCode = -1;  //삭제 처리오류
					
				} else {
					resultCode = 1;   //삭제 정상처리
				}
				
			} else {
				resultCode = -2;   //아이디-비밀번호 불일치
			}

			System.out.println("checkIdPw : "+checkIdPw);
			System.out.println("resultCnt : "+resultCnt);
			
			
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
		
		//삭제처리 결과코드 ㅡ> 속성에 저장 
		request.setAttribute("resultCode", resultCode);
		
		
		// 회원 리스트 다시출력
		
	
		
		
	
		
		
		
		return "/WEB-INF/views/member/deleteMemberResult.jsp";
	}

	
}