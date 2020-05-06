package PhoneBook_Ver06_TEST;

public class PhoneCafeInfor extends PhoneInfor {
	
	String cafeName;   // 동호회 이름
	String nickName;   // 닉네임
	
	
	public PhoneCafeInfor
	(String name, String phoneNumber, String email, String cafeName, String nickName) {
		super(name, phoneNumber, email);
		this.cafeName=cafeName;
		this.nickName=nickName;
	}

	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("동호회 이름 :" +this.cafeName);
		System.out.println("닉네임 :" +this.nickName);
		System.out.println("--------------------------");
	}
	
}
