package PhoneBook_Try3;

public abstract class PhoneInfo implements PhoneBookInterface {
	// 공통된 친구정보의 변수, 기능
	
	
	// 변수
	private String name;           // 이름
	private String phoneNumber;    // 전화번호  
	private String address;        // 주소
	private String email;          // 이메일
	
	
	// 생성자
	PhoneInfo(String name, String phoneNumber, String address, String email){
		this.name=name;
		this.phoneNumber=phoneNumber;
		this.address=address;
		this.email=email;
	}

	
	// 메서드 1. 정보출력
	void showBasicInfo() {
		System.out.println("이름 : " +this.name);
		System.out.println("전화번호 : " +this.phoneNumber);
		System.out.println("주소 : " +this.address);
		System.out.println("이메일 : " +this.email);
	}
	
	
	
	// 메서드 2. 검색이름-폰북이름 일치여부
	boolean checkName(String name) {
		return name.equals(this.name);
	}
	
	
	// 메서드 3. 이름반환
	public String getName() {
		return name;
	}
	
	 
	
}
