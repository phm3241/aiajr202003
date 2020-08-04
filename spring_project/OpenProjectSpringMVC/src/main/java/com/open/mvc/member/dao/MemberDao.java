package com.open.mvc.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.open.mvc.member.model.Member;

public class MemberDao {
	
	// R 로그인시, id.pw 일치확인 ㅡ> member 객체로 반환 
	public int selectByIdPw(Connection conn, String uid, String upw) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member member = null;
		
		try {
			
		String sql = "select * project.from member where uid=? and upw=?";
		
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uid);
		pstmt.setString(1, upw);
		
		rs = pstmt.executeQuery();
		
		while(rs.next()) {
			member = new Member();
					member.setIdx(rs.getInt("idx"));
					member.setUid(rs.getString("uid"));
					member.setUpw(rs.getString("upw"));
					member.setUname(rs.getString("uname"));
					member.setUphoto(rs.getString("uphoto"));
			
			
			
		}
		
		}finally {
			if(rs != null) {
				rs.close();
			}
			
			if(pstmt != null) {
				pstmt.close();
			}
		}
				
		return 0;
		
	} // selectByIdPw() end

}
