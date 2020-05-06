package PhoneBook_Ver06_TEST;

public abstract class PhoneInfor implements PhoneInforInterface {
	
	// 변수
	private static String name;
	private static String phoneNumber;
	private static String email;
	
	// 생성자
	PhoneInfor(	String name, String phoneNumber, String email){
		this.name=name;
		this.phoneNumber=phoneNumber;
		this.email=email;
	}
	
	// 메소드1 : 기본정보 출력
	void showBasicInfo() {
		System.out.println("이름 :" +this.name);
		System.out.println("전화번호 :" +this.phoneNumber);
		System.out.println("이메일 :" +this.email);
	}
	

	// 메소드2 : 검색한 이름과 폰북 이름 비교
	boolean checkName(String name) {
		return this.name.equals(name);
	}
	
	// 메소드3 : 이름 반환 
	String getName() {
		return this.name;
	}

}
	

