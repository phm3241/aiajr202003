package PhoneBook_Ver07_JDBC2;

public class PbComDto {

	// 변수선언 8개
	private int idx;
	private String name;
	private String phoneNumber;
	private String email;
	private String address;
	private String regdate;
	private String company;
	private int ref;

	// 기본 생성자(필수)
	public PbComDto() {
	}

	// 매개변수 생성자(개발자 사용)
	public PbComDto(int idx, String name, String phoneNumber, String email, String address, String regdate,
			String company, int ref) {
		this.idx = idx;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.address = address;
		this.regdate = regdate;
		this.company = company;
		this.ref = ref;
	}

	
	// getter/setter
	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	

	// 확인용 
	@Override
	public String toString() {
		return "PbComDto [idx=" + idx + ", name=" + name + ", phoneNumber=" + phoneNumber + ", email=" + email
				+ ", address=" + address + ", regdate=" + regdate + ", company=" + company + ", ref=" + ref + "]";
	}


	
	
	






} // class end