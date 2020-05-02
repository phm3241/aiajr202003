package PhoneBook_Try3;

public class PhoneCompanyInfo extends PhoneInfo {
	// 회사친구정보 (친구정보의 하위클래스)
	
	
	// 변수
	private String company;   // 회사
	private String depart;    // 부서
	private String job;       // 직업
	
	// 생성자
	public PhoneCompanyInfo(String name, String phoneNumber, String address, String email, String company, String depart, String job) {
		super(name, phoneNumber, address, email);
		this.company=company;
		this.depart=depart;
		this.job=job;
	}
	
	// 메서드1. 전체정보보기_오버라이드
	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("회사 : "+this.company);
		System.out.println("부서 : "+this.depart);
		System.out.println("직업 : "+this.job);

	}

}
