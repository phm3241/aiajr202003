package model;

// 빈즈 클래스 생성 
// 액션태그를 이용해서 객체를 생성한다.
public class LoginInfo {
	
	// 변수는 private처리해준다. 
	private String uid;
	private String name;
	
	// ★빈즈 틀래스는 기본생성자가 필수이다. 
	public LoginInfo() {
//		uid= "cool";
//		name="손흥민";
	}
	
	public LoginInfo(String uid, String name) {
		this.uid = uid;
		this.name = name;
	}

	
	// getter, setter
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "LoginInfo [uid=" + uid + ", name=" + name + "]";
	}
	
	
	
}
