package com.aia.mvc.login.model;

public class LoginRequest {
	
	private String uid;
	private String upw;
	
	// 기본생성자가 반드시 있어야한다. 
	
	// 
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
	
	
	
	@Override
	public String toString() {
		return "LoginRequest [uid=" + uid + ", upw=" + upw + "]";
	}
	
	
	

}
