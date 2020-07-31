package com.open.mvc.member.model;

public class LoginInfo {

	private String uid;
	private String pw;
	
	
	public LoginInfo(String uid, String pw) {
		this.uid = uid;
		this.pw = pw;
	}
	
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	
	
	@Override
	public String toString() {
		return "MemberInfo [uid=" + uid + ", pw=" + pw + "]";
	}
	
	
	
}
