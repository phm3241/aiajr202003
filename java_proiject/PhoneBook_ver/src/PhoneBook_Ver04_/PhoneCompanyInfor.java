package PhoneBook_Ver04_;

public class PhoneCompanyInfor extends PhoneInfor {
	
	String company;   // 회사이름
	String dept;   // 부서
	String job;   // 직급
	
	
	public PhoneCompanyInfor
	(String name, String phoneNumber, String address, String email, String company, String dept, String job) {
		super(name, phoneNumber, address, email);
		this.company=company;
		this.dept=dept;
		this.job=job;
	}

	@Override
	void showAllInfo() {
		super.showAllInfo();
		System.out.println("회사 :" +this.company);
		System.out.println("부서 :" +this.dept);
		System.out.println("직급 :" +this.job);
		System.out.println("--------------------------");
	}
	
}
