package com.open.mvc.login.model;

public class LoginRequest {

	private String uid;
	private String upw;
	private String redirecUri;	// 이전경로
	private String remember;	// 아이디 기억하기

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

	public String getRedirecUri() {
		return redirecUri;
	}

	public void setRedirecUri(String redirecUri) {
		this.redirecUri = redirecUri;
	}

	public String getRemember() {
		return remember;
	}

	public void setRemember(String remember) {
		this.remember = remember;
	}

	@Override
	public String toString() {
		return "LoginRequest [uid=" + uid + ", upw=" + upw + ", redirecUri=" + redirecUri + ", remember=" + remember
				+ "]";
	}

}
