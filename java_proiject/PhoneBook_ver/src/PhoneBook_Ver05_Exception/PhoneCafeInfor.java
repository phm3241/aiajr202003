package PhoneBook_Ver05_Exception;

public class PhoneCafeInfor extends PhoneInfor {
	
	String cafeName;   // 동호회 이름
	String nickName;   // 닉네임
	
	
	public PhoneCafeInfor
	(String name, String phoneNumber, String address, String email, String cafeName, String nickName) {
		super(name, phoneNumber, address, email);
		this.cafeName=cafeName;
		this.nickName=nickName;
	}

	
	// 상속받아서 오버라이드한 메서드에 public 붙이는 이유 :
	// Interface PhoneInfor_Interface 에서 상속받은 public abstract void showAllInfo(); 이므로,
	// 상속받은 하위클래스에서 범위가 좁아지면 안되기 때문에, public을 붙여줘야한다. 
	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("동호회 이름 :" +this.cafeName);
		System.out.println("닉네임 :" +this.nickName);
		System.out.println("--------------------------");
	}
	
}
