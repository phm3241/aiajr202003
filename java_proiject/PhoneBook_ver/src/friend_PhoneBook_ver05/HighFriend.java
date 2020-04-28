package friend_PhoneBook_ver05;

public class HighFriend extends Friend{

	String work;    // 친구의 직업

	public HighFriend(String name, String phoneNum, String addr, String work) {
		super(name, phoneNum, addr);
		this.work=work;
	}

	public void showData() {
		super.showBasicInfo();
		System.out.println("직업 : "+this.work);
	}
	
	
	

}
