package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import jdbc.ConnectionProvider;
import member.dao.MemberDao;
import member.model.Member;
import member.model.MemberListView;
import service.Service;

public class MemberListJsonServiceImpl implements Service {

MemberDao dao;
	
	@Override
	public String getViewPage(
			HttpServletRequest request, 
			HttpServletResponse response) {
		
		// view 로 전달할 결과 데이터
		//MemberListView listView = null;
		List<Member> list = null;
		
		// json 문자열
		String listJson = null;
		
		Connection conn = null;
		
		try {
			conn = ConnectionProvider.getConnection();
			dao = MemberDao.getInstance();
			
			list = dao.selectTotalList(conn);
			
			// 데이터를 json형식으로 바꿔주는 객체?
			Gson gson = new Gson();
			
			// java Object ㅡ> JSON 
			listJson = gson.toJson(list);
			
			
			
		} catch (SQLException e) {
			System.out.println("SQL 오류 발생");
			e.printStackTrace();
		}
		
		
		// view에 json 객체를 보내줌.
		request.setAttribute("list", listJson);
		
		return "/WEB-INF/views/member/memberListJson.jsp";
	}

}






