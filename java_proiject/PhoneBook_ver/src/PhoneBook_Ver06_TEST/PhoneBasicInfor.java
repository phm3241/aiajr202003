package PhoneBook_Ver06_TEST;

public class PhoneBasicInfor extends PhoneInfor {
	
	String address; // 주소
	
	public PhoneBasicInfor(String name, String phoneNumber, String email, String address) {
		super(name, phoneNumber, email);
		this.address=address;
	}
	
	
	// 상속받아서 오버라이드한 메서드에 public 붙이는 이유 :
	// Interface PhoneInfor_Interface 에서 상속받은 public abstract void showAllInfo(); 이므로,
	// 상속받은 하위클래스에서 범위가 좁아지면 안되기 때문에, public을 붙여줘야한다. 
	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("주소 :" +this.address);
		System.out.println("--------------------------");
	}
	
}
