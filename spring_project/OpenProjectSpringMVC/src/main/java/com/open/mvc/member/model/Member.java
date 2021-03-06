package com.open.mvc.member.model;

import java.sql.Date;

public class Member {

	private int idx;
	private String uid;
	private String upw;
	private String uname;
	private String uphoto;
	private Date regdate; // sql의 Date

	public Member(int idx, String uid, String upw, String uname, String uphoto, Date regdate) {
		this.idx = idx;
		this.uid = uid;
		this.upw = upw;
		this.uname = uname;
		this.uphoto = uphoto;
		this.regdate = regdate;
	}

	// ??용도가 뭐지??
	// MemberRegRequest -> Member
	public Member(String uid, String upw, String uname) {
		this(0, uid, upw, uname, null, null);
	}

	public Member() {
	}


	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUpw() {
		return upw;
	}

	public void setUpw(String upw) {
		this.upw = upw;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUphoto() {
		return uphoto;
	}

	public void setUphoto(String uphoto) {
		this.uphoto = uphoto;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	// java.sql.Date ㅡ> java.util.Date
	public java.util.Date getToDate() {
		// ${member.toDate}이렇게 하면 util의 Date를 가져올 수 있다.

		return new java.util.Date(regdate.getTime());
	}

	// Member -> LoginInfo : 로그인 처리시 저장할 데이터
	public LoginInfo toLoginInfo() {
		return new LoginInfo(uid, uname, uphoto);
	}

	@Override
	public String toString() {
		return "Member [idx=" + idx + ", uid=" + uid + ", upw=" + upw + ", uname=" + uname + ", uphoto=" + uphoto
				+ ", regdate=" + regdate + "]";
	}

}
