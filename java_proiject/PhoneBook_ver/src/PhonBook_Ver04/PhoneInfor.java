package PhonBook_Ver04;

/*
Project : ver 0.40
다음 두 클래스를 추가로 삽입. 상속 구조로 구성 해보세요.
PhoneUnivInfor, PhoneCompaanyInfor,
개인적인 클래스 추가 하세요.

각 클래스에 정의되어야 하는 인스턴스 변수.

PhoneUnivInfor
이름             name                  String
전화번호       phoneNumber      String
주소             address              String
이메일          email                  String
전공             major                  String
학년             year                   String

PhoneCompaanyInfor
이름             name                  String
전화번호       phoneNumber      String

이메일          email                  String
회사             company             String

상속구조의 클래스를 추가로 정의 해 보자 

[추가 사항]
1. 입력    --> 1. 일반  2. 대학  3. 회사  4. 동호회 --> 입력 형태로 구성



Ex) PhoneCafeInfor, PhoneFamilyInfor

*/

public class PhoneInfor {
	
	
	// 변수
	private String name;
	private String phoneNum;
	private String email;
	
	// 생성자
	PhoneInfor(String name, String phoneNum, String email){
		this.name=name;
		this.phoneNum=phoneNum;
		this.email=email;
	}
	
	// 전체 정보 출력
	void showBasicInfo() {
		System.out.println("이름 : "+this.name);
		System.out.println("전화번호 : "+this.phoneNum);
		System.out.println("이메일 : "+this.email);
	}
} // class end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


