package PhoneBook_Ver04_;

import java.util.Scanner;

public class PhoneManager {
	
	// 배열생성
	// 저장
	// 검색
	// 삭제
	// 수정
	// 전제보기
	
	PhoneInfor[] books;
	int numOfInfo;
	Scanner kb;

	PhoneManager(int num){
		books=new PhoneInfor[num];
		numOfInfo=0;
		kb=new Scanner(System.in);
	}
	
	// 친구정보 저장-배열 저장
	void addInfo(PhoneInfor info) {
		books[numOfInfo]=info;
		numOfInfo++;
	}
	
	// 친구정보 입력-인스턴스 객체 생성
	void InputInfo() {
		
		
		System.out.println("저장할 친구정보 그룹을 선택하세요.");
		System.out.println("1.일반   2.대학   3.회사   4.동호회");
		int select=kb.nextInt();
		kb.nextLine();
		
		
		System.out.println("친구정보를 입력하세요.");
		System.out.println("이름을 입력하세요.");
		String name=kb.nextLine();
		System.out.println("전화번호를 입력하세요.");
		String phoneNumber=kb.nextLine();
		System.out.println("주소를 입력하세요.");
		String address=kb.nextLine();
		System.out.println("이메일을 입력하세요.");
		String email=kb.nextLine();
		
		PhoneInfor info=null;
		switch(select) {
		case 1:
			info=new PhoneInfor(name, phoneNumber, address, email);
			break;
			
		case 2:
			System.out.println("주소를 입력하세요.");
			String major=kb.nextLine();
			System.out.println("이메일을 입력하세요.");
			String grade=kb.nextLine();
			
			info=new PhoneUnivInfor(name, phoneNumber, address, email, major, grade);
			
			break;
		
		case 3:
			System.out.println("주소를 입력하세요.");
			String company=kb.nextLine();
			System.out.println("이메일을 입력하세요.");
			String dept=kb.nextLine();
			System.out.println("이메일을 입력하세요.");
			String job=kb.nextLine();
			info=new PhoneCompanyInfor(name, phoneNumber, address, email, company, dept, job);
			break;
		
		case 4:
			break;
		
		case 5:
			break;
		}
		
		
		
		
		
	}
	
	
	
}
