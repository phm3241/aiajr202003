package PhonBook_Ver04;

public class PhoneCafeInfor extends PhoneInfor {
	
	private String work;
	private String age;
	
	public PhoneCafeInfor(String name, String phoneNum, String email, String address, String work, String age) {
		super(name, phoneNum, email);
		this.work=work;
		this.age=age;
	}

	@Override
	void showInfo() {
		super.showInfo();
		System.out.println("직업 : "+this.work);
		System.out.println("나이 : "+this.age);
	}
	
	
}
