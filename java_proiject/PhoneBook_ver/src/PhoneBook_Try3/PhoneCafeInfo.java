package PhoneBook_Try3;

public class PhoneCafeInfo extends PhoneInfo {
	// 동호회친구정보 (친구정보의 하위클래스)
	
	
	// 변수
	private String cafeName;   // 동호회이름
	private String nickName;   // 닉네임
	
	// 생성자
	public PhoneCafeInfo(String name, String phoneNumber, String address, String email, String cafeName, String nickName) {
		super(name, phoneNumber, address, email);
		this.cafeName=cafeName;
		this.nickName=nickName;
	}
	
	// 메서드1. 전체정보보기_오버라이드
	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("전공 : "+this.cafeName);
		System.out.println("학년 : "+this.nickName);

	}

}
