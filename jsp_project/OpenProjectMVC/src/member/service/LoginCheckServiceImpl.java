package member.service;

import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jdbc.ConnectionProvider;
import member.dao.MemberDao;
import service.Service;

public class LoginCheckServiceImpl implements Service {

	MemberDao dao;

	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {


		String result = "N";

		String id = request.getParameter("uid");

		Connection conn = null;
		int resultCnt = 0;

		try {
			conn = ConnectionProvider.getConnection();
			dao = MemberDao.getInstance();


			resultCnt = dao.selectById(conn, id);

			if (resultCnt<1) {
				result = "Y";
			}

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
		
		
		request.getSession("login");
		request.setAttribute("idCheck", result);
		
		//System.out.println("id:"+id);
		//System.out.println("result"+result);
		//System.out.println("resultCnt"+resultCnt);

		return "/WEB-INF/views/include.loginCheck.jsp";
		
	}

}