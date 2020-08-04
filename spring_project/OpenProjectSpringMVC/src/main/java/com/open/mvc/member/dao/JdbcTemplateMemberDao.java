package com.open.mvc.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.jdbc.core.JdbcTemplate;

import com.open.mvc.member.model.Member;

public class JdbcTemplateMemberDao {

	@Inject
	JdbcTemplate jdbcTemplate;

	public int selectTotalCount() throws SQLException {

//		원래코드--------------------------------------------
//		int resultCnt = 0;
//		Statement stmt = null;
//		ResultSet rs = null;
//		try {
//			stmt = conn.createStatement();
//			rs = stmt.executeQuery("select count(*) from project.member");
//			if (rs.next()) {
//				resultCnt = rs.getInt(1);
//			}
//		} finally {
//			if (stmt != null) {
//				stmt.close();
//			}
//		}
//		return resultCnt;
//		----------------------------------------------------

		
//		JdbcTemplate 사용했을 때 코드--------------------------
//		int resulCnt =0;
//		String sql= "select count(*) from project.member";
//		jdbcTemplate.queryForObject(sql, Integer.class);
//		return resulCnt;
//		----------------------------------------------------

		
		// JdbcTemplate 사용했을 때 코드..더 축약한 버전----------
		return jdbcTemplate.queryForObject("select count(*) from project.member", Integer.class);

	}

	public List<Member> selectList(int startRow, int count) throws SQLException {
//	public List<Member> selectList(Connection conn, int startRow, int count) throws SQLException {

//		원래코드--------------------------------------------
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		List<Member> memberList = new ArrayList<Member>();
//		String sql = "select * from project.member order by uname limit ?, ?";
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, startRow);
//			pstmt.setInt(2, count);
//			rs = pstmt.executeQuery();
//			while (rs.next()) {
//				Member member = new Member();
//				member.setIdx(rs.getInt("idx"));
//				member.setUid(rs.getString("uid"));
//				member.setUpw(rs.getString("upw"));
//				member.setUname(rs.getString("uname"));
//				member.setUphoto(rs.getString("uphoto"));
//				memberList.add(member);
//			}
//		} finally {
//			if (pstmt != null) {
//				pstmt.close();
//			}
//		}
//
//		return memberList;
//		----------------------------------------------------

		
		
//		JdbcTemplate 사용했을 때 코드--------------------------

//		List<Member> memberList = new ArrayList<Member>();
//		String sql = "select * from project.member order by uname limit ?, ?";
//		memberList = jdbcTemplate.query(sql, new Object[] {startRow, count}, new MemberRowMapper());
//		return memberList;
//		----------------------------------------------------
		
//		JdbcTemplate 사용했을 때 코드..더 축약한 버전----------
		return jdbcTemplate.query("select * from project.member order by uname limit ?, ?", new Object[] {startRow, count}, new MemberRowMapper());
		
		
	
	}

	public Member selectByIdx(Connection conn, int idx) throws SQLException {

		Member member = null;

		PreparedStatement pstmt = null;
		ResultSet rs;

		try {
			String sql = "select * from project.member where idx=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				member = new Member();
				member.setIdx(rs.getInt("idx"));
				member.setUid(rs.getString("uid"));
				member.setUpw(rs.getString("upw"));
				member.setUname(rs.getString("uname"));
				member.setUphoto(rs.getString("uphoto"));
			}

		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}

		return member;
	}

	public Member selectByIdpw(Connection conn, String uid, String pw) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs;
		Member member = null;

		try {
			String sql = "select * from project.member where uid=? and upw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			pstmt.setString(2, pw);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				member = new Member();
				member.setIdx(rs.getInt("idx"));
				member.setUid(rs.getString("uid"));
				member.setUpw(rs.getString("upw"));
				member.setUname(rs.getString("uname"));
				member.setUphoto(rs.getString("uphoto"));
			}

		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}

		return member;
	}

	public List<Member> selectTotalList(Connection conn) throws SQLException {

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		List<Member> memberList = new ArrayList<Member>();

		String sql = "select * from project.member order by uname";

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				Member member = new Member();
				member.setIdx(rs.getInt("idx"));
				member.setUid(rs.getString("uid"));
				member.setUpw(rs.getString("upw"));
				member.setUname(rs.getString("uname"));
				member.setUphoto(rs.getString("uphoto"));

				memberList.add(member);
			}

		} finally {
			if (pstmt != null) {
				pstmt.close();
			}
		}

		return memberList;
	}

}
