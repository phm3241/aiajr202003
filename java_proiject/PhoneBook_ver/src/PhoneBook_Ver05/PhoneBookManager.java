package PhoneBook_Ver05;

import java.util.Scanner;

import PhoneBook_Ver05_Exception.EmptyException;

public class PhoneBookManager {
	
	// 1. 배열 선언
	PhoneInfor[] books;
	// 배열에 저장된 요소의 개수
	int numOfInfo;

	static Scanner kb;

	// 생성자를 통해서 배열 생성, 요소의 개수 초기화
	private PhoneBookManager(int num) {
		// 배열의 생성
		books = new PhoneInfor[num];
		// 요소 개수의 초기화
		numOfInfo = 0;
		// Scanner 초기화
		kb = new Scanner(System.in);
	}
	
	private static PhoneBookManager manager=new PhoneBookManager(100);
	
	public static PhoneBookManager getInstance() {
		return manager;
		
	}
	
	
	
	// 2. 배열에 정보 저장
	// 2.1 배열에 추가
	// 2.2 사용자로 부터 받은 데이터로 인스턴스 생성

	// 2.1 배열에 추가
	void addInfo(PhoneInfor info) {
		// 배열에 numOfInfo 숫자 -> index 로 참조값을 저장
		books[numOfInfo] = info;
		// 입력된 정보의 개수를 +1 증가 시킨다
		numOfInfo++;
	}

	// 2.2 사용자로 부터 받은 데이터로 인스턴스 생성
	void createInfo() throws EmptyException {

//		System.out.println(" 1.일반 2.대학 3.회사 4.동호회 ");
		System.out.println(" 2.대학 3.회사 4.동호회 ");
		System.out.println("입력하고자 하는 번호를 입력해주세요.");
		
		// 사용자 선택 번호
		int select = kb.nextInt();
		kb.nextLine();
		
		if(!(select>0 && select<5)) {
			System.out.println("정상적인 메뉴 선택이 아닙니다.\n메뉴를 다시 선택해주세요.");
			return;
		}
		
		// 예외발생 예상
		if(!(select>0 && select<5)) {
			
			return;
		}

		

		// 2.2.1 기본 정보 수집 : 이름, 전번, 주소, 이메일
		System.out.println("이름을 입력해주세요.");
		String name=readInputInfo();

		// String name = kb.nextLine();  원래 코드.
		// ㅡ> kb.nextLine(); 기능이 포함된 readInputInfo(); 메서드를 추가구성하여 적용.
		// 		입력받고 그대로 입력한 문자 반환하는 기능.
		// 		+ 예외 발생예상처리(필수사항인데, 공백일때 예외처리되도록) 
		//		ㅡ> EmptyException 클래스 생성 ㅡ> throws EmptyException 
		// 		ㅡ> 메인에서 예외처리 : 공백일때, "입력된 정보가 없습니다. 필수사항이니 정보를 입력해주세요." 출력되도록 


		System.out.println("전화번호를 입력해주세요.");
		String phoneNumber = readInputInfo();

		System.out.println("주소를 입력해주세요.");
		String addr = kb.nextLine();

		System.out.println("이메일을 입력해주세요.");
		String email = kb.nextLine();

		PhoneInfor info = null;

		switch (select) {
		case 1:
			// 2.2.2 기본 클래스로 인스턴스 생성
//			info = new PhoneInfor(name, phoneNumber, addr, email);
			break;
		case 2:
			System.out.println("전공(학과)를 입력해주세요.");
			String major = kb.nextLine();
			System.out.println("학년 정보를 입력해주세요.");
			String grade = kb.nextLine();
			
			// 2.2.3 대학 클래스로 인스턴스 생성			
			info = new PhoneUnivInfor(name, phoneNumber, addr, email, major, grade);
			break;
		case 3:
			System.out.println("회사의 이름을 입력해주세요.");
			String company = kb.nextLine();
			System.out.println("부서의 이름을 입력해주세요.");
			String dept = kb.nextLine();
			System.out.println("직무(직급)정보를 입력해주세요.");
			String job = kb.nextLine();
			
			// 2.2.4 회사 클래스로 인스턴스 생성
			info = new PhoneCompanyInfor(name, phoneNumber, addr, email, company, dept, job);
			break;
		case 4:
			System.out.println("동호회 이름을 입력해주세요.");
			String cafeName = kb.nextLine();
			System.out.println("닉네임을 입력해주세요.");
			String nickName = kb.nextLine();
			
			// 2.2.5 동호회 클래스로 인스턴스 생성
			info = new PhoneCafeInfor(name, phoneNumber, addr, email, cafeName, nickName);
			break;
		}

		// 2.3 생성된 인스턴스를 배열에 저장
		
		addInfo(info);
	}

	// 3. 배열의 데이터 출력
	void showAllInfo() {
		
		// for each 반복  : 현재 프로그램에서는 사용 불가
		// for 반복문 : 반복의 횟수 지정이 가능 numOfInfo
		
		System.out.println("전체 정보를 출력합니다. ===========");
		for(int i=0; i<numOfInfo ; i++) {
			books[i].showAllInfo();
			System.out.println("----------------");
		}
		
	}
	
	
	// 배열의 index 검색 : 인스턴스의 name 기준
	int searchIndex(String name) {
		
		// 정상적인 index 값은 0~이상의 값, 찾지 못했을 때 구분 값 -1을 사용
		int searchIndex = -1; 
		
		// 배열의 반복으로 name 값을 비교해서 index 값을 찾는다.
		for(int i=0; i<numOfInfo; i++) {
			System.out.println(name);
			System.out.println(books[i].checkName(name));
			if(books[i].checkName(name)) {
				searchIndex=i;
				break;
			}
		}
		
		return searchIndex;
		
	}
	
	
	// 4. 배열의 정보 검색 : 이름 기준
	void showInfo() throws EmptyException {

		kb.nextLine();   // ★공백값으로 이름값이 안들어가서 계속 검색결과가 false였다.
		System.out.println("검색하실 이름을 입력해주세요.");
		String name = readInputInfo();
		
		int index = searchIndex(name);
		
		System.out.println(index);
		
		if(index<0) {
			System.out.println("검색하신 이름의 정보가 없습니다.");
		} else {
			System.out.println("----------------");
			books[index].showBasicInfo();
			System.out.println("----------------");
		}
		
		
	}
	
	
	
	// 5. 배열의 정보를 삭제 : 이름 기준
	void deleteInfo() throws EmptyException {
		System.out.println("삭제하고자하는 이름을 입력해주세요.");
		String name = readInputInfo();
		kb.nextLine();
		
		int index = searchIndex(name);
		
		if(index<0) {
			System.out.println("삭제하고자하는 이름의 정보가 없습니다.");
		} else {
			
			// 삭제 위치에서 외쪽으로 시프트
			for(int i=index; i<numOfInfo-1; i++) {
				books[i]=books[i+1];
			}
			// 삭제가 되었으므로 요소의 개수도 -1 
			numOfInfo--;
		}
		
	}
	
	
	// 6. 배열의 정보를 수정 : 이름 기준
	void editInfo() throws EmptyException {
		
		System.out.println("변경하고자 하는 이름을 입력해주세요.");
		String name = readInputInfo();
		kb.nextLine();
		
		int index = searchIndex(name);
		
		if(index<0) {
			System.out.println("찾으시는 이름의 정보가 존재하지 않습니다.");
			return;
		} else {
			
			String editName = books[index].getName();
			
			System.out.println("수정 데이터 입력을 시작합니다.");
			System.out.println("이름은 " + editName + "입니다.");
			System.out.println("전화번호를 입력해주세요.");
			String phoneNumber = readInputInfo();
			System.out.println("주소를 입력해주세요.");
			String addr = kb.nextLine();
			System.out.println("이메일을 입력해주세요.");
			String email = kb.nextLine();
			
			PhoneInfor info = null;
			
			// 저장된 인스턴스가 : 기본, 대학, 회사, 동호회
			if(books[index] instanceof PhoneUnivInfor) {
				System.out.println("전공을 입력해주세요.");
				String major = kb.nextLine();
				System.out.println("학년을 입력해주세요.");
				String grade = kb.nextLine();
				
				info = new PhoneUnivInfor(editName, phoneNumber, addr, email, major, grade);
				
			} else if(books[index] instanceof PhoneCompanyInfor) {
				
				System.out.println("회사 이름을 입력해주세요.");
				String company = kb.nextLine();
				System.out.println("부서 이름을 입력해주세요.");
				String dept = kb.nextLine();
				System.out.println("직급을 입력해주세요.");
				String job = kb.nextLine();
				
				info = new PhoneCompanyInfor(editName, phoneNumber, addr, email, company, dept, job);
				
			
			} else if(books[index] instanceof PhoneCafeInfor) {
				
				System.out.println("동호회 이름을 입력해주세요.");
				String cafeName = kb.nextLine();
				System.out.println("닉네임을 입력해주세요.");
				String nickName = kb.nextLine();
				
				info = new PhoneCafeInfor(editName, phoneNumber, addr, email, cafeName, nickName);
				
//			} else if(books[index] instanceof PhoneInfor) {
//				info = new PhoneInfor(editName, phoneNumber, addr, email);
//			}
			
			// 배열에 새로운 인스턴스를 저장
			books[index]=info;
			}
		}
	} // editInfo 메서드 end

	
	// 예외처리 확인해주는 메서드 - 입력받은 문자열이 공백문자일 때
	public static String readInputInfo() throws EmptyException {
		
		String info = kb.nextLine();
		
		if(info.length()<=0) {
			EmptyException e=new EmptyException();    // 사용자정의 Exception 클래스 사용.
			throw e; // 강제적으로 예외를 발생시키는 지점, 예외타입의 참조값 e를 던져줘야한다.
		}
		
		return info;
	}
}
