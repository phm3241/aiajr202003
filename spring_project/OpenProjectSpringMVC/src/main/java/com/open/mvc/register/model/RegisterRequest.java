package com.open.mvc.register.model;

import org.springframework.web.multipart.MultipartFile;

public class RegisterRequest {
	

	private String uid;
	private String upw;
	private String uname;
	private MultipartFile uphoto;

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

	public MultipartFile getUphoto() {
		return uphoto;
	}

	public void setUphoto(MultipartFile uphoto) {
		this.uphoto = uphoto;
	}

	@Override
	public String toString() {
		return "RegisterRequest [uid=" + uid + ", upw=" + upw + ", uname=" + uname + ", uphoto-fileName="
				+ uphoto.getOriginalFilename() + "]";
	}

}
