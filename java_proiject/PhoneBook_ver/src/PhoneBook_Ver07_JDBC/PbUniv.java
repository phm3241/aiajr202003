package PhoneBook_Ver07_JDBC;

public class PbUniv {

	// 변수선언
	private String name;
	private String phoneNumber;
	private String address;
	private String email;
	private String major;   
	private int grade;   
	
	// 기본 생성자(필수)
	public PbUniv() {
		super();
	}

	// 매개변수 생성자(개발자 사용)
	public PbUniv(String name, String phoneNumber, String address, String email, String major, int grade) {
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.email = email;
		this.major = major;
		this.grade = grade;
	}

	
	// getter/setter

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

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

	
	
	
	// 내용확인용 
	@Override
	public String toString() {
		return "PbUniv [name=" + name + ", phoneNumber=" + phoneNumber + ", address=" + address + ", email=" + email
				+ ", major=" + major + ", grade=" + grade + "]";
	}


} //class end