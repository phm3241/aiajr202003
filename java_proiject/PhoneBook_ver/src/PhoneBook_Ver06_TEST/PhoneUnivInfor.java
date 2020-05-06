package PhoneBook_Ver06_TEST;

public class PhoneUnivInfor extends PhoneInfor {
	
	String address; // 주소
	String major;   // 전공
	String year;   // 학년
	
	public PhoneUnivInfor(String name, String phoneNumber, String address, String email, String major, String year) {
		super(name, phoneNumber, email);
		this.address=address;
		this.major=major;
		this.year=year;
	}
	
	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("주소 :" +this.address);
		System.out.println("전공 :" +this.major);
		System.out.println("학년 :" +this.year);
		System.out.println("--------------------------");
	}
}
