package PhoneBook_Ver07_JDBC;

public class PbUnivDto extends PbBasicDto {

	
	// 변수선언 8개
	private String major;   
	private int grade;    
	
	
	// 기본 생성자(필수)
	public PbUnivDto() {
		super();
	}

	
	// 매개변수 생성자(개발자 사용)
	public PbUnivDto(int idx, String name, String phoneNumber, String email, String address, String regdate) {
		super(idx, name, phoneNumber, email, address, regdate);
	}


	// getter/setter
	public String getMajor() {
		return major;
	}


	public void setMajor(String major) {
		this.major = major;
	}


	public int getGrade() {
		return grade;
	}


	public void setGrade(int grade) {
		this.grade = grade;
	}

	

	@Override
	public String toString() {
		return "PbUnivDto [major=" + major + ", grade=" + grade + "]";
	}

	
	
	

	


} //class end