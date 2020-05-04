package PhoneBook_Ver06_TEST;

/*
상속관계 : is a 관계, 대표성
포함관계 : has a 

*/

/*
Project : ver 0.5
1.manager 클래스의 싱글톤 패턴처리
	1-1. 생성자 접근제어지시자 : private (인스턴스 생성 막는다.)
	1-2. 공동으로 사용할 인스턴스 생성 : static private
	1-3. 참조변수를 반환해주는 메서드 : static public
**자주보게될 패턴. 


2. interFace 기반의 상수표현 메뉴표현
	고교 친구 저장 : 1
	대학 친구 저장 : 2
	기본 정보 출력 : 3
	전체 정보 출력 : 4
	exit : 5


3. interface ㅡ> 추상클래스 ㅡ> 상속 관계 구조로 변경

*/
public abstract class PhoneInfor implements PhoneInforInterface {
	
	// 변수
	private static String name;
	private static String phoneNumber;
	private static String email;
	
	// 생성자
	PhoneInfor(	String name, String phoneNumber, String email){
		this.name=name;
		this.phoneNumber=phoneNumber;
		this.email=email;
	}
	
	// 메소드1 : 기본정보 출력
	void showBasicInfo() {
		System.out.println("이름 :" +this.name);
		System.out.println("전화번호 :" +this.phoneNumber);
		System.out.println("이메일 :" +this.email);
	}
	
	
	
	// 2020.04.29
	// 수정내용 : interface 구현으로 메서드 오버라이딩 생략
	// PhoneInfor클래스 ㅡ> PhoneInfor_Interface를 상속받는 추상화클래스가 되어 추상화 ㅡ> 인스턴스생성 못한다.
	// public abstract void showAllInfo();
	
	
	
	
	// 메소드3 : 검색한 이름과 폰북 이름 비교
	boolean checkName(String name) {
		return this.name.equals(name);
	}
	
	String getName() {
		return this.name;
	}

}
	

