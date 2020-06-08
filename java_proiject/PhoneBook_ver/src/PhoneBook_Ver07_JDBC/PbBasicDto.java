package PhoneBook_Ver07_JDBC;

public class PbBasicDto {

	// 변수선언 6개
	private int idx;
	private String name;
	private String phoneNumber;
	private String email;
	private String address;
	private String regdate;
	
	
	
	// 기본생성자
	public PbBasicDto() {
	}



	// 생성자
	public PbBasicDto(int idx, String name, String phoneNumber, String email, String address, String regdate) {
		this.idx = idx;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.address = address;
		this.regdate = regdate;
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



	public String getRegdate() {
		return regdate;
	}



	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}



	@Override
	public String toString() {
		return "PbBasicDto [idx=" + idx + ", name=" + name + ", phoneNumber=" + phoneNumber + ", email=" + email
				+ ", address=" + address + ", regdate=" + regdate + "]";
	}
	
	
	
	
	

}
