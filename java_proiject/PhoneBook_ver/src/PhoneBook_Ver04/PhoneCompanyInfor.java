package PhoneBook_Ver04;

public class PhoneCompanyInfor extends PhoneInfor {
	
	private String company;    // 회사이름
	private String dept;       // 부서이름
	private String jop;        // 직급
	
	public PhoneCompanyInfor(String name, String phoneNum, String addr, String email, String company, String dept, String jop) {
		super(name, phoneNum, addr, email);
		this.company=company;
		this.dept=dept;
		this.jop=jop;
	}

	@Override
	void showAllInfo() {
		super.showAllInfo();
		System.out.println("회사 : "+this.company);
		System.out.println("부서 : "+this.dept);
		System.out.println("직급 : "+this.jop);
	}
	
}
