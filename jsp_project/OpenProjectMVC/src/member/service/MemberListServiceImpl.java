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

public class MemberListServiceImpl implements Service {

	// Dao 가져오기
	private MemberDao dao;

	// 한페이지에 표현하는 메시지의 개수 : 상수표현
	private final int MESSAGE_COUNT_PER_PAGE = 3;

	@Override
	public String getViewPage(HttpServletRequest request, HttpServletResponse response) {
		
		
		// 파라미터에 잘못된 데이터가 들어와도 1page가 들어가도록..
		// list.jsp?page=kkk 라고 들어가게되면, null은 아니지만.. 오류발생하므로..
		// 나중에 예외처리 필요..
		int pageNum = 1;   

		String pageNumber = request.getParameter("page");

		if(pageNumber != null){
			pageNum = Integer.parseInt(pageNumber);
		};
		
		
		
		Connection conn = null;

		MemberListView memberListView = null;

		try {
			// 필요한 Connection과 Dao
			conn = ConnectionProvider.getConnection();
			dao = MemberDao.getInstance();

			// 페이지의 전체 메시지 구하기
			List<Member> memberList = null;

			// Dao 연동 : DB에서 테이블 출력 확인 후 ㅡ> 전체 메시지의 개수 반환
			int memberTotalCount = dao.selectTotalCount(conn);

			// 페이지당 표현 게시물의 개수에 따라 시작게시물과 끝게시물이 달라진다.
			int startRow = 0;

			// 메시지가 존재하면, 페이지의 시작행, 마지막 행 구하기
			if (memberTotalCount > 0) {
				// 시작 행, 마지막 행 구하기
				// 1page: 1~3 , 2page: 4~6, 3page: 7~9 ...
				// startRow: 1, 4, 7 endRow: 3, 6, 9 ...
				startRow = (pageNum - 1) * MESSAGE_COUNT_PER_PAGE;

				memberList = dao.selectMemberList(conn, startRow);

			} else {
				// 총 페이지에서 벗어나는 경우, 0으로 표시
				pageNum = 0;
				// Collections.emptyList(); ???
				memberList = Collections.emptyList();

			};

			// memberListView 객체 생성
			memberListView = new MemberListView(memberTotalCount, pageNum, memberList, MESSAGE_COUNT_PER_PAGE, startRow);

		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		} // finally end

		

		
		request.setAttribute("listView", memberListView);
		
		
//		확인용
//		if(memberListView == null) {
//			System.out.println("MemberListView는 null");
//		} else {
//			
//			for(int i=0; i<memberListView.getMemberList().size(); i++) {
//				
//				System.out.println("멤버목록"+memberListView.getMemberList().get(i));
//			}
//		}
		
		
		
		return "/WEB-INF/views/member/memberList.jsp";
	}

	
	/*
	 * // 전체 게시물을 3개의 게시물로 구분하여 페이지 구성하고 // ㅡ> 구성한 전체 목록 중 "선택한 페이지의 게시물들"을
	 * MessageListView 객체로 반환. public MemberListView getMemberList(int pageNumber) {
	 * 
	 * // 페이지 번호 ㅡ> 시작 행, 끝 행을 구할 수 있다. (startRow, endRow) // 이걸 받아서 dao에서 매개변수로 넘겨서
	 * List를 요청할 수 있다.
	 * 
	 * Connection conn = null;
	 * 
	 * MemberListView memberListView = null;
	 * 
	 * try { // 필요한 Connection과 Dao conn = ConnectionProvider.getConnection(); dao =
	 * MemberDao.getInstance();
	 * 
	 * // 페이지의 전체 메시지 구하기 List<Member> memberList = null;
	 * 
	 * // Dao 연동 : DB에서 테이블 출력 확인 후 ㅡ> 전체 메시지의 개수 반환 int memberTotalCount =
	 * dao.selectTotalCount(conn);
	 * 
	 * // 페이지당 표현 게시물의 개수에 따라 시작게시물과 끝게시물이 달라진다. int startRow = 0;
	 * 
	 * // 메시지가 존재하면, 페이지의 시작행, 마지막 행 구하기 if (memberTotalCount > 0) { // 시작 행, 마지막 행
	 * 구하기 // 1page: 1~3 , 2page: 4~6, 3page: 7~9 ... // startRow: 1, 4, 7 endRow:
	 * 3, 6, 9 ... startRow = (pageNumber - 1) * MESSAGE_COUNT_PER_PAGE;
	 * 
	 * memberList = dao.selectMemberList(conn, startRow);
	 * 
	 * } else { // 총 페이지에서 벗어나는 경우, 0으로 표시 pageNumber = 0; //
	 * Collections.emptyList(); ??? memberList = Collections.emptyList();
	 * 
	 * };
	 * 
	 * // memberListView 객체 생성 memberListView = new MemberListView(memberTotalCount,
	 * pageNumber, memberList, MESSAGE_COUNT_PER_PAGE, startRow);
	 * 
	 * } catch (SQLException e) { e.printStackTrace(); } catch (Exception e) {
	 * e.printStackTrace(); } finally { if (conn != null) { try { conn.close(); }
	 * catch (SQLException e) { e.printStackTrace(); } } } // finally end
	 * 
	 * return memberListView;
	 * 
	 * }; // getMessageList() method end
	 */
}