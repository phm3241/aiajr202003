package PhoneBook_Ver01;

import java.util.*;


/*Version 0.1 전화번호 관리 프로그램. 
PhoneInfor 라는 이름의 클래스를 정의해 보자. 
클래스는 다음의 데이터들의 문자열 형태로 저장이 가능 해야 하며, 
저장된 데이터의 적절한 출력이 가능하도록 메소드 정의

• 이름            name              String
• 전화번호       phoneNumber     String
• 생년월일       birthday            String 

단, 생년월일 정보는 저장할 수도 있고, 저장 않을 수도 있게끔 생성자 생성.
*/

public class PhoneInfor {
	// 데이터를 저장하는 목적의 클래스로 구성
	// 단순 출력하는 메서드는 포함되어도 좋음.
		
		// 변수선언, private으로 변수의 직접참조를 막는다. (정보은닉), 이제 다른패키지에 인스턴스 생성할 수 없다. 
		private String name;           // 친구의 이름
		private String phoneNumber;    // 친구의 전화번호
		private String birthday;       // 친구의 생일
		
		// 초기화를 위한 생성자 : 생년월일까지 받는 
		PhoneInfor(String name, String phoneNumber, String birthday){
			this.name=name;   //지역변수하고 인스턴스변수하고 구별해주기 위해, this 붙여주기
			this.phoneNumber=phoneNumber;   
			this.birthday=birthday;   
		}
		
		// 초기화를 위한 생성자 : 생년월일은 안받는
		PhoneInfor(String name, String phoneNumber){
//			this.name=name;   
//			this.phoneNumber=phoneNumber;   
//			this(name, phoneNumber, null);   
			this(name, phoneNumber, "입력값이 없습니다");   
			// 수정이 생기면 다 바꿔야하기 때문에, this로 위에 있는 생성자를 가져와서 작성하는 방법 권장 
			// 생년월일을 입력하지 않았을 때, null이 아니라 기본값(초기화값)에 직접 "입력값이 없습니다"가 나오도록하면
			// 아래 출력메서드에서 if조건문을 줄일 수 있다. 
		}
		
		
		// 메서드 : 데이터 출력하는 기능 
		void showInfo() {
			System.out.println("이름: "+this.name);
			System.out.println("전화번호: "+this.phoneNumber);
			System.out.println("생일: "+this.birthday);
//			if(this.birthday==null) {
//				System.out.println("생일: 입력값이 없습니다.");
//			} else{
//				System.out.println("생일: "+this.birthday);
//			}
		}
		

}
