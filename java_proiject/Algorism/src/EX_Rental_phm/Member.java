package EX_Rental_phm;

public class Member extends MemberInfo{

	boolean loginCheck;		//로그인
	String id;				//회원 아이디
	String pw;				//회원 비밀번호
	int level;				//대여 등급 1 -> 2 -> 3
	int numOfRent;			//대여권수 0
	int rentalAvail;		//대여가능횟수 5
	int numOfExtens;		//연장가능횟수 1
	int overdue;			//연체 0
	int rentalDate;			//대여일 7
	String returnData;		//반납예정일 
	String rentInfo;		//대여상태 
	int dataOfExtens;		//연장기간 7
	
	
	//인스턴스 변수 초기화
	Member(String name, int age, String phoneNum, String addr, String email,String id,String pw) {
		super(name, age, phoneNum, addr, email);
		this.loginCheck = false;
		this.id = id;
		this.pw = pw;
		this.level = 1;
		this.numOfRent = 0;
		this.rentalAvail = 5;
		this.numOfExtens = 1;
		this.overdue = 0;
		this.rentalDate = 7;
		this.dataOfExtens = 7;
	
	}

	@Override
	void showBasicInfo() {
		super.showBasicInfo();
		System.out.println("등급 :"+level+"\t대여권수 :"+numOfRent+"\t대여가능권수 :"+rentalAvail+"\t연장가능횟수 :"+numOfExtens+"\t연체 :"+overdue);
		
	}

	@Override
	void showAllInfo() {
		super.showBasicInfo();
		System.out.println("등급 :"+level+"\t대여권수 :"+numOfRent+"\t대여가능권수 :"+rentalAvail+"\t연장가능횟수 :"+numOfExtens+"\t연체 :"+overdue);
		System.out.println("대여일 :"+rentalDate+"\t반납예정일 :"+returnData+"\t대여상태 :"+rentInfo+"연장기간 :"+dataOfExtens);
	}	
	
	

}
