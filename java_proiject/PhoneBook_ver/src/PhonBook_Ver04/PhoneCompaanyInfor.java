package PhonBook_Ver04;

public class PhoneCompaanyInfor extends PhoneInfor {
	
	private String company;
	
	public PhoneCompaanyInfor(String name, String phoneNum, String email, String company) {
		super(name, phoneNum, email);
		this.company=company;
	}

	@Override
	void showInfo() {
		super.showInfo();
		System.out.println("회사 : "+this.company);
	}
	
	
}
