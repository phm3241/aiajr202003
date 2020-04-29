package PhoneBook_Ver05;

public class PhoneCompanyInfor extends PhoneInfor {
	
	String company;   // 회사이름
	String dept;   // 부서
	String job;   // 직급
	
	
	public PhoneCompanyInfor
	(String name, String phoneNumber, String address, String email, String company, String dept, String job) {
		super(name, phoneNumber, address, email);
		this.company=company;
		this.dept=dept;
		this.job=job;
	}

	
	// 상속받아서 오버라이드한 메서드에 public 붙이는 이유 :
	// Interface PhoneInfor_Interface 에서 상속받은 public abstract void showAllInfo(); 이므로,
	// 상속받은 하위클래스에서 범위가 좁아지면 안되기 때문에, public을 붙여줘야한다. 
	@Override
	public void showAllInfo() {
		showBasicInfo();
		System.out.println("회사 :" +this.company);
		System.out.println("부서 :" +this.dept);
		System.out.println("직급 :" +this.job);
		System.out.println("--------------------------");
	}
	
}
