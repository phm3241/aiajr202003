package guestbook.model;

// 빈즈 만들기  ㅡ> useBean 액션태그로 생성자 통해서 객체 생성.
public class Message {
	
	private int mid;
	private String uname;
	private String pw;
	private String message;
	
	
	public Message(int mid, String uname, String pw, String message) {
		this.mid = mid;
		this.uname = uname;
		this.pw = pw;
		this.message = message;
	}
	
	// 빈즈에서는 기본생성자 필수!
	public Message() {
	}


	public int getMid() {
		return mid;
	}


	public void setMid(int mid) {
		this.mid = mid;
	}


	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}

	
	// 디버깅용.. 나중에 출력할 때 포맷
	@Override
	public String toString() {
		return "Message [mid=" + mid + ", uname=" + uname + ", pw=" + pw + ", message=" + message + "]";
	}
	
	
	
	
	
	
}
