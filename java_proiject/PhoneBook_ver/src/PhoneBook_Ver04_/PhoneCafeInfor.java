package PhoneBook_Ver04_;

public class PhoneCafeInfor extends PhoneInfor {
	
	String cafeName;   // 동호회 이름
	String nickName;   // 닉네임
	
	
	public PhoneCafeInfor
	(String name, String phoneNumber, String address, String email, String cafeName, String nickName) {
		super(name, phoneNumber, address, email);
		this.cafeName=cafeName;
		this.nickName=nickName;
	}

	@Override
	void showAllInfo() {
		super.showAllInfo();
		System.out.println("동호회 이름 :" +this.cafeName);
		System.out.println("닉네임 :" +this.nickName);
	}
	
}
