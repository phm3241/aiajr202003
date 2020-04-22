package PhoneBook_Ver02;

import java.util.Scanner;

/*
	전화번호 정보를 저장하는 기능만을 포함하는 클래스
	1. 사용자로부터 데이터를 받아서 인스턴스를 생성하고 반환하는 기능
	
 */

public class PhoneBookManager {
		
		// 변수는 따로 없고, 기능만 있는 클래스
	
		PhoneInfor creatInstance() {
			
			PhoneInfor info=null;    // 반환하기 위한 변수선언

			Scanner sc=new Scanner(System.in);
			System.out.println("친구의 정보를 저장하기 위한 데이터를 입력합니다.");
			System.out.println("이름을 입력해주세요 >> ");
			String name=sc.nextLine();
			
			System.out.println("전화번호를 입력해주세요 >> ");
			String phoneNumber=sc.nextLine();
			
			System.out.println("생년월일을 입력해주세요 >> ");
			String birthday=sc.nextLine();
			
			// 사용자의 입력 데이터에 따라 인스턴스 생성 방법을 구분 
			if(birthday==null || birthday.trim().isEmpty()) {
				info=new PhoneInfor(name, phoneNumber);
			}else {
				info=new PhoneInfor(name, phoneNumber, birthday);
			}
				// trim 메서드는 스페이스바를 눌러서 공백이 들어가면, 양쪽의 공백을 제거해주는 기능
				// isEmpty 메서드는 빈문자열일때를 확인해주는 기능?
				// ㅡ> 우선 trim으로 양쪽공백제거해주고, isEmpty로 빈문자열인지 확인. 
				// 또는 참조변수 null로 빈문자열인지 확인.
				//			return new PhnoneInfo();  // 이렇게하면 사용자가 입력하는게 두가지 타입이라 안된다.
			
			return info;

			
	}

}
