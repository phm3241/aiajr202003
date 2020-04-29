package PhoneBook_Ver05_Exception;

public class PhoneUnivInfor extends PhoneInfor {
	
	String major;   // 전공
	String grade;   // 학년
	
	public PhoneUnivInfor(String name, String phoneNumber, String address, String email, String major, String grade) {
		super(name, phoneNumber, address, email);
		this.major=major;
		this.grade=grade;
	}
	
	
	// 상속받아서 오버라이드한 메서드에 public 붙이는 이유 :
	// Interface PhoneInfor_Interface 에서 상속받은 public abstract void showAllInfo(); 이므로,
	// 상속받은 하위클래스에서 범위가 좁아지면 안되기 때문에, public을 붙여줘야한다. 
	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("전공 :" +this.major);
		System.out.println("학년 :" +this.grade);
		System.out.println("--------------------------");
	}
	
}
