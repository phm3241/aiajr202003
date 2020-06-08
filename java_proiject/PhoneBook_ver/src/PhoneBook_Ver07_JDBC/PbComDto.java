package PhoneBook_Ver07_JDBC;

public class PbComDto extends PbBasicDto {

	// 변수선언 8개
	private String company;

	// 기본 생성자(필수)
	public PbComDto() {
		super();
	}

	// 매개변수 생성자(개발자 사용)
	public PbComDto(String company) {
		super();
		this.company = company;
	}

	// getter/setter
	public String getMajor() {
		return company;
	}

	
	
	@Override
	public String toString() {
		return "PbComDto [company=" + company + "]";
	}




} // class end