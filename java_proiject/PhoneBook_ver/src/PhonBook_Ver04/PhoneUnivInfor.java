package PhonBook_Ver04;

public class PhoneUnivInfor extends PhoneInfor {

	String address;
	String major;
	String year;
	
	public PhoneUnivInfor(String name, String phoneNum, String email, String address, String major, String year) {
		super(name, phoneNum, email);
		this.address=address;
		this.major=major;
		this.year=year;
	}

	@Override
	void showInfo() {
		super.showInfo();
		System.out.println("주소 : "+this.address);
		System.out.println("전공 : "+this.major);
		System.out.println("학년 : "+this.year);
	}
	
	
	
	
	
} //class end
