package PhoneBook_Try2;

public class PhoneInfor {
	// 데이터 저장목적의 클래스
	
	// 변수
	private String name;
	private String phoneNumber;
	private String birthday;
	
		
	// 생성자1 : 생일까지 데이터 받았을 때,
	PhoneInfor(String name, String phoneNumber, String birthday){
		this.name=name;
		this.phoneNumber=phoneNumber;
		this.birthday=birthday;
	}
	
	// 생성자2 : 이름, 전화번호만 받았을 때
	PhoneInfor(String name, String phoneNumber){
		this(name, phoneNumber, "입력값이 없습니다");
	}
	
	// 메서드1 : 저장된 데이터의 출력기능
	void showInfo() {
		System.out.println("이름 : "+this.name);
		System.out.println("전화번호 : "+this.phoneNumber);
		System.out.println("생년월일 : "+this.birthday);
	}
	
	// 메서드2 : PhoneBook의 이름과 검색한 이름이 같은지 확인해주는 기능 ㅡ> true/fale 반환
	boolean checkName(String name) {   // ◀ 수정코드...equals메서드를 사용하여 동일비교
		return this.name.equals(name);  
	}
}		
//	boolean checkInfo(String name) {   //▶ 원래작성코드...
//		if(name==this.name) {
//			return true;
//		}else
//			return false;
//	}
