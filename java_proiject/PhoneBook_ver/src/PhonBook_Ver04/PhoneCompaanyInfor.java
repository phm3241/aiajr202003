package PhonBook_Ver04;

public class PhoneCompaanyInfor extends PhoneInfor {
	
	String company;
	
	public PhoneCompaanyInfor(String name, String phoneNum, String email, String company) {
		super(name, phoneNum, email);
		this.company=company;
	}
}
