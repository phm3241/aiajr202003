package model2;

// 빈즈 클래스 생성 
// 액션태그를 이용해서 객체를 생성한다.
public class LoginInfo_id_name {
	
	// 변수는 private처리해준다. 
	private String uid;
	private String name;
	
	// ★빈즈 틀래스는 기본생성자가 필수이다. 
	public LoginInfo_id_name() {
//		uid= "cool";
//		name="손흥민";
	}
	
	public LoginInfo_id_name(String uid, String name) {
		this.uid = uid;
		this.name = name;
	}

	
	// getter
	// 회원정보 변경은 생성자 통해서 변경저장되어야하기 떄문에
	// setter는 없어야한다. 
	public String getUid() {
		return uid;
	}

//	public void setUid(String uid) {
//		this.uid = uid;
//	}

	public String getName() {
		return name;
	}

//	public void setName(String name) {
//		this.name = name;
//	}

	@Override
	public String toString() {
		return "LoginInfo [uid=" + uid + ", name=" + name + "]";
	}
	
	
	
}
