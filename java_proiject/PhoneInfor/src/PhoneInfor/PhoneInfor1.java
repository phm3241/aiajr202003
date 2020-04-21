package PhoneInfor;

/*Version 0.1 전화번호 관리 프로그램. 
PhoneInfor 라는 이름의 클래스를 정의해 보자. 
클래스는 다음의 데이터들의 문자열 형태로 저장이 가능 해야 하며, 
저장된 데이터의 적절한 출력이 가능하도록 메소드 정의

• 이름            name              String
• 전화번호       phoneNumber     String
• 생년월일       birthday            String 

단, 생년월일 정보는 저장할 수도 있고, 저장 않을 수도 있게끔 생성자 생성.
*/

public class PhoneInfor1 {

	// 변수: 문자열 형태로 저장
	String name;
	String phonNumber;
	String birthday;
	
	// 생성자1: 이름, 전화번호은 필수. 생년월일은 선택으로. 
	public PhoneInfor1(String name, String phonNumber){
		this.name=name;
		this.phonNumber=phonNumber;
	}
	// 생성자2: 이름, 전화번호, 생년월일 필수 
	public PhoneInfor1(String name, String phonNumber, String birthday){
		this.name=name;
		this.phonNumber=phonNumber;
		this.birthday=birthday;
	}
	
	// 메소드: 저장된 데이터 출력
	void showInfo1() {
		System.out.println("이름: "+this.name);
		System.out.println("전화번호: "+this.phonNumber);
	}

	void showInfo2() {
		System.out.println("이름: "+this.name);
		System.out.println("전화번호: "+this.phonNumber);
		System.out.println("생년월일: "+this.birthday);
	}
}
