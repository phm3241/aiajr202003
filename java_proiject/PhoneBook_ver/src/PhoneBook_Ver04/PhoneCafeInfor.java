package PhoneBook_Ver04;

public class PhoneCafeInfor extends PhoneInfor {
	
	private String cafeName;    // 동호회 이름
	private String nickName;    // 닉네임
	
	public PhoneCafeInfor
		(String name, String phoneNum, String addr, String email, String cafeName, String nickName) {
		super(name, phoneNum, addr, email);
		this.cafeName=cafeName;
		this.nickName=nickName;
	}

	@Override
	void showAllInfo() {
		super.showBasicInfo();
		System.out.println("동호회이름 : "+this.cafeName);
		System.out.println("닉네임 : "+this.nickName);
	}
	
}
