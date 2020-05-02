package PhoneBook_Try3;

public class PhoneUnivInfo extends PhoneInfo {
	// 대학친구정보 (친구정보의 하위클래스)
	
	
	// 변수
	private String major;   // 전공
	private String grade;   // 학년
	
	// 생성자
	public PhoneUnivInfo(String name, String phoneNumber, String address, String email, String major, String grade) {
		super(name, phoneNumber, address, email);
		this.major=major;
		this.grade=grade;
	}
	
	// 메서드1. 전체정보보기_오버라이드
	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("전공 : "+this.major);
		System.out.println("학년 : "+this.grade);

	}

}
