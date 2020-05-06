package PhoneBook_Ver06_TEST;

public class PhoneCompanyInfor extends PhoneInfor {
	
	String company;   // 회사이름
	
	
	public PhoneCompanyInfor
	(String name, String phoneNumber, String email, String company) {
		super(name, phoneNumber, email);
		this.company=company;
	}

	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("회사 :" +this.company);
		System.out.println("--------------------------");
	}
	
}
