package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Report;

public class ReportDao {
	
	// 싱글톤 처리
	private ReportDao() {}
	private static ReportDao dao = new ReportDao();
	public static ReportDao getInstance() {
		return dao;
	};
	
	
	public int insertReport(Connection conn, Report report) throws SQLException {
		
		int resultCnt = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = "insert into report values(REPORT_SEQ.nextval, ?, ?, ?)";
		
		// SQLException 예외처리하려는게 아니라, finally 에서 close하려고 try문 작성
		try {
		
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, report.getSname());
			pstmt.setString(2, report.getSno());
			pstmt.setString(3, report.getReport());
			
			resultCnt = pstmt.executeUpdate();
			
			
			
		} finally {
			if(pstmt != null) {
				pstmt.close();
			}
		}
		
		return resultCnt;
	}
	
}
