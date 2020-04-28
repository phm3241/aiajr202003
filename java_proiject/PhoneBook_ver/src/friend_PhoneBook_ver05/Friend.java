package friend_PhoneBook_ver05;

/*
 	친구의 정보를 저장하기 위한 클래스
 	상속을 목적으로 기본 클래스 정의
	기본 속성과 기능을 구성
	
	ㅁ 친구정보 - 이름, 전번, 주소, 이메일, 전공, 학년, 직장 등
	ㅁ 친구분류에 따라서 친구정보가 달라지는데, 
	   공통되는것과 다른것을 구분한다. ㅡ> 공통된 것은 상위클래스, 다른 것은 하위클래스으로 나눈다.
	   상위클래스 정의할 때 하위클래스의 다른정보들도 불러올 수 있도록 메서드 만들어서,
	   하위클래스에서 오버로딩하여 형변환없이 정보를 불러올 수 있도록한다. 
	ㅁ 친구정보 - 변수, 메서드 ㅡ> 대학친구/ 고교친구 
		대학 - 이름, 전번, 주소, 이메일, 전공, 학년
		고교 - 이름, 전번, 주소, 직장
 */

// implements Info 하게 되면, class 앞에 abstract를 추가해야한다. 
// 추상메서드를 가지고 있게된다. 
public abstract class Friend implements Info {

	String name;        // 친구의 이름
	String phoneNum;    // 친구의 전화번호
	String addr;        // 친구의 주소

	// 생성자
	Friend(String name, String phoneNum, String addr){
		this.name=name;
		this.phoneNum=phoneNum;
		this.addr=addr;
	}

	// 기본정보 출력
	void showBasicInfo() {
		System.out.println("이름 :"+this.name);
		System.out.println("전화번호 :"+this.phoneNum);
		System.out.println("주소 :"+this.addr);
	}
	
	// 상속의 목적으로 "오버라이딩" 할 메서드
	// 기본데이터와 하위클래스의 데이터를 출력하도록 오버라이딩한다.
//	void showData() {
//	}

	
	// 추상메서드 생성
	// abstract void showData();
	
} //class end














