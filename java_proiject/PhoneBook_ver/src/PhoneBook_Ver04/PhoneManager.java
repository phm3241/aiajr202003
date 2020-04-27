package PhoneBook_Ver04;

import java.util.Scanner;

public class PhoneManager {
	// phoneBook의 기능들을 담는 클래스. 
	// phoneBook의 배열을 관리하는 클래스.
	
	PhoneInfor[] pBook;
	int count;
	Scanner kb;
	
	PhoneManager(){
		pBook=new PhoneInfor[100];
		count=0;
		kb=new Scanner(System.in);
	}
	
	// 메뉴 1 기능. 친구정보 입력
	// 1-1. 배열에 객체저장
	void pBookAddInfo(PhoneInfor info) {
		pBook[count]=info;
		count++;
	}
	
	// 메뉴 1 기능. 친구정보 입력
	// 1-2. 객체생성(친구분류별) ㅡ> 1. 일반  2. 대학  3. 회사  4. 동호회
	void InputInfo(int choice){
		PhoneInfor info=null;
		
		System.out.println("이름을 입력해주세요.");
		String name=kb.nextLine();
		System.out.println("전화번호를 입력해주세요.");
		String phoneNum=kb.nextLine();
		System.out.println("이메일을 입력해주세요.");
		String email=kb.nextLine();
		
		if(choice==1) {
			info=new PhoneInfor(name, phoneNum, email);
		}
		
		else if(choice==2) {
			System.out.println("주소를 입력해주세요.");
			String address=kb.nextLine();
			System.out.println("전공을 입력해주세요.");
			String major=kb.nextLine();
			System.out.println("학년을 입력해주세요.");
			String year=kb.nextLine();
			
			info=new PhoneUnivInfor(name, phoneNum, email, address, major, year);
		}
		
		else if(choice==3) {
			System.out.println("회사를 입력해주세요.");
			String company=kb.nextLine();
			
			info=new PhoneCompaanyInfor(name, phoneNum, email, company);
		}
		
		else if(choice==4) {
			System.out.println("주소를 입력해주세요.");
			String address=kb.nextLine();
			System.out.println("직업을 입력해주세요.");
			String work=kb.nextLine();
			System.out.println("나이를 입력해주세요.");
			String age=kb.nextLine();
			
			info=new PhoneCafeInfor(name, phoneNum, email, address, work, age);
		}
	}
	
	
	// 메뉴 2.3기능. 친구정보 검색 후 정보출력/삭제
	// 검색하여 인덱스반환
	int searchIndex(String name) {
		
		int searchIndex=-1;
		
		for(int i=0; i<count; i++) {
			if(pBook[i].checkName(name)) {
				searchIndex=i;
				break;
			}
		}
		return searchIndex;
	}
	
	
	// 메뉴 2 기능. 친구정보 검색 후 정보출력
	void searchInfo(String name) {
		System.out.println("검색하고자하는 이름을 입력하세요.");
		name=kb.nextLine();
		
		if(searchIndex(name)<0) {
			System.out.println("찾으시는 정보가 없습니다.");
		}
		else
			pBook[searchIndex(name)].showInfo();
	}
	
	
	
	// 메뉴 3 기능. 친구정보 검색 후 정보삭제
	void deleteInfo(String name) {
		System.out.println("삭제하고자하는 이름을 입력하세요.");
		name=kb.nextLine();
		
		if(searchIndex(name)<0) {
			System.out.println("찾으시는 정보가 없습니다.");
		}
		else
			for(int i=searchIndex(name); i<count-1; i--) {
			pBook[i]=pBook[i+1];
			}
		count--;
		System.out.println("요청하신 이름의 정보를 삭제했습니다.");
	}
	
	
	
	// 메뉴 4 기능. 친구정보 전체보기(친구분류별) ㅡ> 1. 일반  2. 대학  3. 회사  4. 동호회
	
	
	
	
	
	
	
	
} //class end