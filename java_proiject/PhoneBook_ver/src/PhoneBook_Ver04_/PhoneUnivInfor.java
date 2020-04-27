package PhoneBook_Ver04_;

public class PhoneUnivInfor extends PhoneInfor {
	
	String major;   // 전공
	String grade;   // 학년
	
	public PhoneUnivInfor(String name, String phoneNumber, String address, String email, String major, String grade) {
		super(name, phoneNumber, address, email);
		this.major=major;
		this.grade=grade;
	}

	@Override
	void showAllInfo() {
		super.showAllInfo();
		System.out.println("전공 :" +this.major);
		System.out.println("학년 :" +this.grade);
		System.out.println("--------------------------");
	}
	
}
