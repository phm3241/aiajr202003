package PhoneBook_Ver04_;

import java.util.Scanner;

public class PhoneBookManager {
	
	// 배열생성
	// 저장
	// 검색
	// 삭제
	// 수정
	// 전제보기
	
	PhoneInfor[] books;
	int numOfInfo;
	Scanner kb;

	PhoneBookManager(int num){
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
			System.out.println("전공을 입력하세요.");
			String major=kb.nextLine();
			System.out.println("학년을 입력하세요.");
			String grade=kb.nextLine();
			
			info=new PhoneUnivInfor(name, phoneNumber, address, email, major, grade);
			
			break;
		
		case 3:
			System.out.println("회사를 입력하세요.");
			String company=kb.nextLine();
			System.out.println("부서을 입력하세요.");
			String dept=kb.nextLine();
			System.out.println("직급을 입력하세요.");
			String job=kb.nextLine();
			info=new PhoneCompanyInfor(name, phoneNumber, address, email, company, dept, job);
			break;
		
		case 4:
			System.out.println("동호회 이름을 입력하세요.");
			String cafeName=kb.nextLine();
			System.out.println("닉네임을 입력하세요.");
			String nickName=kb.nextLine();
			info=new PhoneCafeInfor(name, phoneNumber, address, email, cafeName, nickName);
			break;
		}
		addInfo(info);
	}
	
	
	// 친구정보 검색 ㅡ> 인덱스 반환
	int searchIndex(String name) {
		
		int searchIndex=-1;
		
		for(int i=0; i<numOfInfo; i++) {
			if(books[i].equals(name)) {
				searchIndex=i;
			}
		}
		return searchIndex;
	}
	

	// 친구정보 검색 ㅡ> 정보출력
	void showInfo() {
		System.out.println("검색하고자하는 이름을 입력하세요.");
		String name=kb.nextLine();
		
		kb.nextLine();
		
		int Index=searchIndex(name);
		
		if(Index<0) {
			System.out.println("찾으시는 이름의 정보가 없습니다.");
		} else {
			books[Index].showBasicInfo();
		}
		System.out.println("요청하신 이름의 정보를 출력했습니다.");
	}
	
	
	
	
	// 친구정보 검색 ㅡ> 정보삭제
	void deleteInfo() {
		System.out.println("삭제하고자하는 이름을 입력하세요.");
		String name=kb.nextLine();
		kb.nextLine();
		
		int Index=searchIndex(name);
		
		if(Index<0) {
			System.out.println("찾으시는 이름의 정보가 없습니다.");
		} else {
			for(int i=Index; i<numOfInfo-1; i++) {
				books[i]=books[i+1];
			}
		}
		System.out.println("요청하신 이름의 정보를 삭제했습니다.");
	}
	
	
	
	
	
	// 친구정보 검색 ㅡ> 정보 수정
	void editInfo() {
		System.out.println("수정하고자하는 이름을 입력하세요.");
		String name=kb.nextLine();
		kb.nextLine();
		
		int Index=searchIndex(name);
		
		if(Index<0) {
			System.out.println("수정하고자하는 이름의 정보가 없습니다.");
		} 
		
		String editName=books[Index].getName();
	
		System.out.println("수정하고자하는 이름은 "+editName+"입니다.");
		System.out.println("전화번호를 수정하세요.");
		String phoneNumber=kb.nextLine();
		System.out.println("주소를 수정하세요.");
		String address=kb.nextLine();
		System.out.println("이메일을 수정하세요.");
		String email=kb.nextLine();
		
		PhoneInfor info=null;
		
		if (books[Index] instanceof PhoneUnivInfor) {
			System.out.println("전공을 수정하세요.");
			String major=kb.nextLine();
			System.out.println("학년을 수정하세요.");
			String grade=kb.nextLine();
			
			info=new PhoneUnivInfor(name, phoneNumber, address, email, major, grade);
			}

		else if (books[Index] instanceof PhoneCompanyInfor) {
			System.out.println("회사를 수정하세요.");
			String company=kb.nextLine();
			System.out.println("부서을 수정하세요.");
			String dept=kb.nextLine();
			System.out.println("직급을 수정하세요.");
			String job=kb.nextLine();
			
			info=new PhoneCompanyInfor(name, phoneNumber, address, email, company, dept, job);
			}
		
		else if (books[Index] instanceof PhoneCafeInfor) {
			System.out.println("동호회 이름을 수정하세요.");
			String cafeName=kb.nextLine();
			System.out.println("닉네임을 수정하세요.");
			String nickName=kb.nextLine();
			info=new PhoneCafeInfor(name, phoneNumber, address, email, cafeName, nickName);
			}
		
		else {
			info=new PhoneInfor(name, phoneNumber, address, email);
			}
		
		books[Index]=info;
		System.out.println("요청하신 이름의 정보를 수정했습니다.");
		}
		
	
	
	// 친구정보 전체출력
	void showAllData() {
		for(int i=0; i<numOfInfo; i++) {
			books[i].showAllInfo();
		}
		System.out.println("===========================");
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
