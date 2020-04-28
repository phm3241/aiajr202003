package friend_PhoneBook_ver05;

public class UnivFriend extends Friend {

	
	String major;     // 친구의 전공
	int grade;        // 친구의 학년
	
	public UnivFriend(String name, String phoneNum, String addr, String major, int grade) {
		super(name, phoneNum, addr);
		this.major=major;
		this.grade=grade;
	}

	public void showData() {
		super.showBasicInfo();
		System.out.println("전공 : "+this.major);
		System.out.println("학년 : "+this.grade);
	}
	

}