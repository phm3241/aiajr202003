package PhoneBook_Ver04_;

/*
상속관계 : is a 관계, 대표성
포함관계 : has a 

*/

/*
Project : ver 0.4
다음 두 클래스를 추가로 삽입. 상속 구조로 구성 해보세요.
PhoneUnivInfor, PhoneCompaanyInfor, 개인적인 클래스 추가 하세요.
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

[기능]
-기본정보출력, 전체정보출력 (개별기능메서드)
관리기능
-배열을 통해서 저장
-사용자의 입력데이터 저장
-데이터의 검색/삭제/수정

[클래스의 정의]
-데이터 저장용 클래스
1. 상속관계로 구성
-PhoneInfor : 기본클래스(상속을 위한 클래스) 
	변수 : 이름, 전화번호, 주소, 이메일
	메서드 : 기본정보 출력, 전체정보 출력(오버라이딩), 
-PhoneUnivInfor
	PhoneInfor를 상속
	변수 : 전공, 학년
	메서드 : 전체정보 출력(오버라이딩)
-PhoneCompanyInfor
	Phoneinfor를 상속
	변수 : 회사이름, 부서, 직급
	메서드 : 전체정보 출력(오버라이딩)
-PhoneCafeInfor 
	Phoneinfor를 상속
	변수 : 동호회이름, 닉네임
	메서드 : 전체정보 출력(오버라이딩)
	
-PhoneBookManager
	배열 : PhoneInfor타입의 배열생성
	입력 : 배열의 요소에 인스턴스 저장
	삭제 : 배열의 요소에서 인스턴스 참조 끊는 것.
	수정 : 배열의 수정하고자하는 인덱스를 찾아서
			변경하고자하는 데이터를 기반으로
			인스턴스를 생성하고 해당 인덱스의 배열요소에 저장
			(참조하고 있는 객체말고, 객체를 새로만들어서 참조변수의 주소값을 바꿔주는 것)
	
*/

//상속을 위한 기본 클래스 구성
//인스턴스 생성의 목적이 없다.
/*
- PhoneInfor
변수 : 이름, 전화번호, 주소, 이메일
메서드 : 기본정보 출력, 전체정보 출력(오버라이딩)

- PhoneUnivInfor
PhoneInfor 상속
변수 : 전공, 학년
메서드 : 전체 정보 출력(오버라이딩)

- PhoneCompanyInfor
PhoneInfor 상속
변수 : 회사이름, 부서, 직급
메서드 : 전체 정보 출력(오버라이딩)

- PhoneCafeInfor
PhoneInfor 상속
변수 : 동호회 이름, 닉네임
메서드 : 전체 정보 출력(오버라이딩)



- PhoneBookManager
배열 : PhoneInfor타입의 배열 생성
입력 : 배열의 요소에 인스턴스 저장
삭제 : 배열의 요소에서 인스턴스 참조 끊는것
수정 : 배열의 수정 하고자하는 인덱스를 찾아서
       변경하고자하는 데이러를 기반으로 
       인스턴스를 생성 해당 인덱스의 배열요소에
       저장
*/
public class PhoneInfor {
	
	// 변수
	String name;
	String phoneNumber;
	String address;
	String email;
	
	// 생성자
	PhoneInfor(	String name, String phoneNumber, String address, String email){
		this.name=name;
		this.phoneNumber=phoneNumber;
		this.address=address;
		this.email=email;
	}
	
	// 메소드1 : 기본정보 출력
	void showBasicInfo() {
		System.out.println("이름 :" +this.name);
		System.out.println("전화번호 :" +this.phoneNumber);
		System.out.println("주소 :" +this.address);
		System.out.println("이메일 :" +this.email);
	}
	
	
	// 메소드2 : 전체정보 출력 (오버로딩하여 사용하는 메서드)
	void showAllInfo() {
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
