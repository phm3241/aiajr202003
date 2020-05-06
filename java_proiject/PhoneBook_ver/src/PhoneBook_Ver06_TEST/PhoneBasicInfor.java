package PhoneBook_Ver06_TEST;

public class PhoneBasicInfor extends PhoneInfor {
	
	String address; // 주소
	
	public PhoneBasicInfor(String name, String phoneNumber, String email, String address) {
		super(name, phoneNumber, email);
		this.address=address;
	}
	
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("주소 :" +this.address);
		System.out.println("--------------------------");
	}
	
}
