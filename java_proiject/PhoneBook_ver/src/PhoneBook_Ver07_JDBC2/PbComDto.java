package PhoneBook_Ver07_JDBC2;

public class PbComDto {

	// 변수선언 7개
	private int idx;
	private String name;
	private String phoneNumber;
	private String email;
	private String address;
	private String regdate;
	private String company;

	// 기본 생성자(필수)
	public PbComDto() {
		super();
	}

	// 매개변수 생성자(개발자 사용)
	public PbComDto(int idx, String name, String phoneNumber, String email, String address, String regdate,
			String company) {
		super();
		this.idx = idx;
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.address = address;
		this.regdate = regdate;
		this.company = company;
	}

	
	// getter/setter
	






} // class end