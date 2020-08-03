package com.open.mvc.member.model;

public class LoginInfo {

	private String uid;
	private String uname;
	private String photo;

	public LoginInfo() {
	}

	public LoginInfo(String uid, String uname, String photo) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.photo = photo;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "LoginInfo [uid=" + uid + ", uname=" + uname + ", photo=" + photo + "]";
	}

}
