package PhoneBook_Ver06_List;

import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.Scanner;

/*
PhoneBook_ver05

1.manager 클래스의 싱글톤 패턴처리 
	1-1. 생성자 접근제어지시자 : private (인스턴스 생성 막는다.)
	1-2. 공동으로 사용할 인스턴스 생성 : static private
	1-3. 참조변수를 반환해주는 메서드 : static public
**자주보게될 패턴. 
**무분별한 인스턴스생성을 막기위한 목적
  (기능만 있는 인스턴스는 같은 기능의 인스턴스를 만들어서 메모리를 굳이 차지할 필요가 없기 때문에)


2. interFace 기반의 상수표현 메뉴표현
	고교 친구 저장 : 1
	대학 친구 저장 : 2
	기본 정보 출력 : 3
	전체 정보 출력 : 4
	exit : 5


3. interface ㅡ> 추상클래스 ㅡ> 상속 관계 구조로 변경
*/

public class PhoneBookManager {
	
	// 1. 배열 선언
	// PhoneInfor[] books;
	// 배열에 저장된 요소의 개수
	// int numOfInfo;
	
	// List 참조변수
	ArrayList<PhoneInfor> books;
	
	Scanner kb;

	// 생성자를 통해서 배열 생성, 요소의 개수 초기화
	// 싱글톤처리 위한 private 생성자 : 생성자를 막아두어 다른 클래스에서 인스턴스 생성을 못하도록. 
	private PhoneBookManager(int num) {
		// 배열의 생성
		// books = new PhoneInfor[num];
		// 요소 개수의 초기화
		// numOfInfo = 0;
		
		// List 인스턴스 생성
		books=new ArrayList<PhoneInfor>(); // PhoneInfor는 앞에서 선언되었으므로 생략가능
		
		
		// Scanner 초기화
		kb = new Scanner(System.in);
	}
	
	// 싱글톤처리 위한 private 인스턴스생성 : 여기서만 인스턴스 생성하여 찬조변수 생성.
	private static PhoneBookManager manager=new PhoneBookManager(100);
	
	// 싱글톤처리 위한 public static 메서드 : 외부에서 인스턴스생성 말고, 인스턴스의 참조값을 가져가서 쓸 수 있도록.
	// 인스턴스는 하나만 만드는 효과.
	public static PhoneBookManager getInstance() {
		return manager;
		
	}
	
	
	
	// 2. 배열에 정보 저장
	// 2.1 배열에 추가
	// 2.2 사용자로 부터 받은 데이터로 인스턴스 생성

	// 2.1 배열에 추가
	void addInfo(PhoneInfor info) {
		// 배열에 numOfInfo 숫자 -> index 로 참조값을 저장
		// books[numOfInfo] = info;
		// 입력된 정보의 개수를 +1 증가 시킨다
		// numOfInfo++;
		
		// List에 추가
		books.add(info);
	}

	// 2.2 사용자로 부터 받은 데이터로 인스턴스 생성
	void createInfo() {
		
		// 사용자 선택 번호
		int select = 0;
		PhoneInfor info = null;
		String name=null, phoneNumber=null, addr=null, email=null;
		
		
		// 다시 입력받는 경우를 위해, createInfo 메서드 중 번호입력부분. while문으로 수정.
		while(true) {
			
//		System.out.println(" 1.일반 2.대학 3.회사 4.동호회 ");   PhoneInfor를 추상화클래스로 변경하면서 아래메뉴로 변경
			System.out.println("1.대학 2.회사 3.동호회 ");
			System.out.println("입력하고자 하는 번호를 입력해주세요.");
			
			try {
				select = kb.nextInt();
				
				// 정상범위 1~3를 벗어났을 때, 강제적 예외발생!
				if(!(select>=1 && select <=3)) {
					BadNumberException e=new BadNumberException("잘못된 메뉴번호 입력");
					throw e;
				}
			} catch(InputMismatchException e) {
				System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
				continue;
			} catch(BadNumberException e) {
//				System.out.println(e.getMessage());
				System.out.println("메뉴범위를 벗어난 숫자입력입니다. \n 확인하시고 다시 입력해주세요");
				continue;
			} catch(Exception e) {  // 생각치 못한 오류발생이 있을 수 있기 때문에.
				System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
				continue;
			} finally {
				manager.kb.nextLine();  
				// 버퍼발생을 없애주기 위해, finally에 넣어 예외가 발생하든 안하든 실행됨.
			}
			
			break;
		
		} // while end
		
		// 위의 Try~catch로 예외처리
//		if(!(select>0 && select<5)) {
//			System.out.println("정상적인 메뉴 선택이 아닙니다.\n메뉴를 다시 선택해주세요.");
//			return;
//		}
//		


		
		while(true) {

			// 2.2.1 기본 정보 수집 : 이름, 전번, 주소, 이메일
			System.out.println("이름을 입력해주세요.");
			name = kb.nextLine();
	
			System.out.println("전화번호를 입력해주세요.");
			phoneNumber = kb.nextLine();
	
			System.out.println("주소를 입력해주세요.");
			addr = kb.nextLine();
	
			System.out.println("이메일을 입력해주세요.");
			email = kb.nextLine();
			
			
			try {
			
			// 예외가 생긴다면, 강제 예외발생!
			// trim은 앞뒤 공백 잘라주는 기능. 그리고나서 isEmpty 공백문자확인기능.
				if(name.trim().isEmpty() || phoneNumber.trim().isEmpty() || addr.trim().isEmpty() || email.trim().isEmpty()) {
			
				StringEmptyException e=new StringEmptyException();
				throw e;
				}
			}catch(StringEmptyException e) {
				System.out.println("기본정보는 공백없이 모두 입력해주셔야합니다.");
				System.out.println("다시 입력해주세요\n.");
				continue;
			}
			
			break;
			
		} //while end
			
			
		switch (select) {
//		case 1:
			// 2.2.2 기본 클래스로 인스턴스 생성
//			info = new PhoneInfor(name, phoneNumber, addr, email);
//			break;
		case MainMenu.UNIV:
			System.out.println("전공(학과)를 입력해주세요.");
			String major = kb.nextLine();
			System.out.println("학년 정보를 입력해주세요.");
			String grade = kb.nextLine();
			
			// 2.2.3 대학 클래스로 인스턴스 생성			
			info = new PhoneUnivInfor(name, phoneNumber, addr, email, major, grade);
			break;
		case MainMenu.COMPANY:
			System.out.println("회사의 이름을 입력해주세요.");
			String company = kb.nextLine();
			System.out.println("부서의 이름을 입력해주세요.");
			String dept = kb.nextLine();
			System.out.println("직무(직급)정보를 입력해주세요.");
			String job = kb.nextLine();
			
			// 2.2.4 회사 클래스로 인스턴스 생성
			info = new PhoneCompanyInfor(name, phoneNumber, addr, email, company, dept, job);
			break;
		case MainMenu.CAFE:
			System.out.println("동호회 이름을 입력해주세요.");
			String cafeName = kb.nextLine();
			System.out.println("닉네임을 입력해주세요.");
			String nickName = kb.nextLine();
			
			// 2.2.5 동호회 클래스로 인스턴스 생성
			info = new PhoneCafeInfor(name, phoneNumber, addr, email, cafeName, nickName);
			break;
		} // switch end
		
		// 2.3 생성된 인스턴스를 배열에 저장
		addInfo(info);
		
	} // createInfo() method end 
		
		
		
	
	// 3. 배열의 데이터 출력
	void showAllInfo() {
		
		// for each 반복  : 현재 프로그램에서는 사용 불가
		// for 반복문 : 반복의 횟수 지정이 가능 numOfInfo
		
		System.out.println("전체 정보를 출력합니다. ===========");
		// for(int i=0; i<numOfInfo ; i++) {
		// 		books[i].showAllInfo();
		
		// List로 변경
		for(int i=0; i<books.size() ; i++) {
			books.get(i).showAllInfo();
			System.out.println("----------------");
		}
		
	}
	
	
	// 배열의 index 검색 : 인스턴스의 name 기준
	int searchIndex(String name) {
		
		// 정상적인 index 값은 0~이상의 값, 찾지 못했을 때 구분 값 -1을 사용
		int searchIndex = -1; 
		
		// 배열의 반복으로 name 값을 비교해서 index 값을 찾는다.
		// for(int i=0; i<numOfInfo; i++) {
//			System.out.println(name); // 오류점검차 중간출력
//			System.out.println(books[i].checkName(name));   // 오류점검차 중간출력
		//	if(books[i].checkName(name)) {
		//		searchIndex=i;
		//		break;
		//	}
			
		for(int i=0; i<books.size(); i++) {
//				System.out.println(name); // 오류점검차 중간출력
//				System.out.println(books[i].checkName(name));   // 오류점검차 중간출력
			if(books.get(i).checkName(name)) {
				searchIndex=i;
				break;
			}
		}
		
		return searchIndex;
		
	}
	
	
	// 4. 배열의 정보 검색 : 이름 기준
	void showInfo() {

//		kb.nextLine();   // ★공백값으로 이름값이 안들어가서 계속 검색결과가 false였다.
		System.out.println("검색하실 이름을 입력해주세요.");
		String name = kb.nextLine();
		
		int index = searchIndex(name);
		
//		System.out.println(index);   // 오류점검차 중간출력
		
		if(index<0) {
			System.out.println("검색하신 이름의 정보가 없습니다.");
		} else {
			System.out.println("----------------");
			books.get(index).showBasicInfo();
			System.out.println("----------------");
		}
		
		
	}
	
	
	
	// 5. 배열의 정보를 삭제 : 이름 기준
	void deleteInfo() {
		
//		kb.nextLine();   // ★공백값으로 이름값이 안들어가서 계속 검색결과가 false였다.
		System.out.println("삭제하고자하는 이름을 입력해주세요.");
		String name = kb.nextLine();
		
		int index = searchIndex(name);
		
		if(index<0) {
			System.out.println("삭제하고자하는 이름의 정보가 없습니다.");
		} else {
			
			// 삭제 위치에서 외쪽으로 시프트
			// for(int i=index; i<numOfInfo-1; i++) {
			//	books[i]=books[i+1];
			books.remove(index);
			
			}
			// 삭제가 되었으므로 요소의 개수도 -1 
//			numOfInfo--;
		}
			
	
	
	// 6. 배열의 정보를 수정 : 이름 기준
	void editInfo() {
		
//		kb.nextLine();   // ★공백값으로 이름값이 안들어가서 계속 검색결과가 false였다.
		System.out.println("변경하고자 하는 이름을 입력해주세요.");
		String name = kb.nextLine();
		
		int index = searchIndex(name);
		
		if(index<0) {
			System.out.println("찾으시는 이름의 정보가 존재하지 않습니다.");
			return;
		} else {
			
			String editName = books.get(index).getName();
			
			System.out.println("수정 데이터 입력을 시작합니다.");
			System.out.println("이름은 " + editName + "입니다.");
			System.out.println("전화번호를 입력해주세요.");
			String phoneNumber = kb.nextLine();
			System.out.println("주소를 입력해주세요.");
			String addr = kb.nextLine();
			System.out.println("이메일을 입력해주세요.");
			String email = kb.nextLine();
			
			PhoneInfor info = null;
			
			// 저장된 인스턴스가 : 기본, 대학, 회사, 동호회
			if(books.get(index) instanceof PhoneUnivInfor) {
				System.out.println("전공을 입력해주세요.");
				String major = kb.nextLine();
				System.out.println("학년을 입력해주세요.");
				String grade = kb.nextLine();
				
				info = new PhoneUnivInfor(editName, phoneNumber, addr, email, major, grade);
				
			} else if(books.get(index) instanceof PhoneCompanyInfor) {
				
				System.out.println("회사 이름을 입력해주세요.");
				String company = kb.nextLine();
				System.out.println("부서 이름을 입력해주세요.");
				String dept = kb.nextLine();
				System.out.println("직급을 입력해주세요.");
				String job = kb.nextLine();
				
				info = new PhoneCompanyInfor(editName, phoneNumber, addr, email, company, dept, job);
				
			
			} else if(books.get(index) instanceof PhoneCafeInfor) {
				
				System.out.println("동호회 이름을 입력해주세요.");
				String cafeName = kb.nextLine();
				System.out.println("닉네임을 입력해주세요.");
				String nickName = kb.nextLine();
				
				info = new PhoneCafeInfor(editName, phoneNumber, addr, email, cafeName, nickName);
				
//			} else if(books[index] instanceof PhoneInfor) {
//				info = new PhoneInfor(editName, phoneNumber, addr, email);
//			}
			
			// 배열에 새로운 인스턴스를 저장
			// books[index]=info;
				
			// 수정은 해당인덱스에 있던 데이터를 삭제하고나서, 추가하는 방법으로 진행
			books.remove(index);  
			books.add(index, info);
			
		
			
			} // else if end
		} //else end
	} // editInfo() end

} //PhoneBookManager class end
