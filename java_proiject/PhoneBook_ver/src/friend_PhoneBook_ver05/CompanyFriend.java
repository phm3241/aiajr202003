package friend_PhoneBook_ver05;

public class CompanyFriend extends Friend {

	public CompanyFriend(String name, String phoneNum, String addr) {
		super(name, phoneNum, addr);
	}
	
	// 조상클래스(추상클래스)의 추상메서드를 오버라이드했다.
	// 반드시 오버라이드해야한다. 오버라이드하지 않으면, 이 CompanyFriend 클래스도 추상클래스가 된다.
	public void showData() {
	}
}
