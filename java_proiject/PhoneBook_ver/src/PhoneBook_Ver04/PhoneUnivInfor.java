package PhoneBook_Ver04;

// PhoneInfor 클래스를 상속해서 새로운 클래스를 정의
public class PhoneUnivInfor extends PhoneInfor {

	private String major;
	private String grade;
	
	public PhoneUnivInfor(String name, String phoneNum, String addr, String email, String major, String grade) {
		super(name, phoneNum, addr, email);
		this.major=major;
		this.grade=grade;
	}

	@Override
	void showAllInfo() {
		super.showAllInfo();
		System.out.println("전공 : "+this.major);
		System.out.println("학년 : "+this.grade);
	}
} //class end
