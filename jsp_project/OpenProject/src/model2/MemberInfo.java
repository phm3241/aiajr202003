package model2;

public class MemberInfo {

	private String id; 
	private String pw; 
	private String uname;
	
	// 기본생성자는 그대로
	public MemberInfo() {
	}
	
	
	// getter, setter
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	
	// 데이터 확인용
	@Override
	public String toString() {
		return "requestMemberInfo [id=" + id + ", pw=" + pw + ", uname=" + uname + "]";
	} 
	
	
	
	
}
