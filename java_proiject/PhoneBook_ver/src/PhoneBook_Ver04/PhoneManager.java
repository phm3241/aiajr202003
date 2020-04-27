package PhoneBook_Ver04;

import java.util.Scanner;

// PhoneInfo 타입의 배열로 
// 친구들의 정보를 저장, 수정, 삭제, 검색, 출력 기능
public class PhoneManager {
	// phoneBook의 기능들을 담는 클래스. 
	// phoneBook의 배열을 관리하는 클래스.
	
	// 1. 배열생성
	// 2. 배열에 정보저장
	// 3. 배열의 데이터 출력
	// 4. 배열의 정보 검색 : 이름기준
	// 5. 배열의 정보 삭제 : 이름기준 
	// 6. 배열의 정보 수정 : 이름기준
	
	
	
	//1. 배열생성
	// 배열선언
	PhoneInfor[] books;
	// 배열에 저장된 요소의 갯수
	int numOfInfo;
	Scanner kb;
	
	// 생성자를 통해서 배열 생성, 요소의 갯수 초기화
	PhoneManager(int num){
		books=new PhoneInfor[num];
		numOfInfo=0;
		kb=new Scanner(System.in);
	}
	
	// 메뉴 1 기능. 친구정보 입력
	// 1-1. 배열에 추가(객체저장)
	void AddInfo(PhoneInfor info) {
		// 배열에 numIoInfo 숫자 ㅡ> index로 참조값을 저장
		books[numOfInfo]=info;
		// 입력된 정보의 갯수를 +1 증가시킨다
		numOfInfo++;
	}
	
	
	// 메뉴 1 기능. 친구정보 입력
	// 1-2. 객체생성(친구분류별) ㅡ> 1. 일반  2. 대학  3. 회사  4. 동호회
	// 사용자로부터 받은 데이터로 인스턴스 생성
	void InputInfo(){
		
		System.out.println("저장하고자하는 번호를 입력하세요.");
		System.out.println("1.일반   2. 대학   3. 회사   4. 동호회");
		
		
		// int choice=kb.nextInt();
		// kb.nextLine();  
		// 이렇게 써서 숫자로 받은 후 생기는 공백을 제거하거나, 
		// 아래처럼 Integer.parseInt 메서드를 사용해 string을 int로 변경해주기
		
		// 사용자 선택 번호
		int choice=Integer.parseInt(kb.nextLine());
		
		if(!(choice>0 && choice<5)) {
			System.out.println("정상적인 메뉴 선택이 아닙니다.\n메뉴를 다시 선택해주세요");
				return;
		}
		
		
		// 1-2-(1).기본정보 수집 : 이름, 전번, 주소, 이메일
		System.out.println("이름을 입력해주세요.");
		String name=kb.nextLine();
		System.out.println("전화번호를 입력해주세요.");
		String phoneNum=kb.nextLine();
		System.out.println("주소를 입력해주세요.");
		String addr=kb.nextLine();
		System.out.println("이메일을 입력해주세요.");
		String email=kb.nextLine();
		
		PhoneInfor info=null;
		
		switch(choice) {
		// 1-2-(2). 기본 클래스로 인스턴스 생성
		case 1: 
			info=new PhoneInfor(name, phoneNum, addr, email);
			break;
		// 1-2-(3). 대학 클래스로 인스턴스 생성
		case 2: 
			System.out.println("전공을 입력해주세요.");
			String major=kb.nextLine();
			System.out.println("학년을 입력해주세요.");
			String grade=kb.nextLine();
			
			info=new PhoneUnivInfor(name, phoneNum, addr, email, major, grade);
			break;
		
		// 1-2-(4). 회사 클래스로 인스턴스 생성
		case 3: 
			System.out.println("회사를 입력해주세요.");
			String company=kb.nextLine();
			System.out.println("부서를 입력해주세요.");
			String dept=kb.nextLine();
			System.out.println("직급를 입력해주세요.");
			String jop=kb.nextLine();
			
			info=new PhoneCompanyInfor(name, phoneNum, addr, email, company, dept, jop);
			break;
		
		// 1-2-(5). 동호회 클래스로 인스턴스 생성
		case 4: 
			System.out.println("동호회 이름을 입력해주세요.");
			String cafeName=kb.nextLine();
			System.out.println("닉네임을 입력해주세요.");
			String nickName=kb.nextLine();
			
			info=new PhoneCafeInfor(name, phoneNum, addr, email, cafeName, nickName);
			break;
			
		// 1-3. 생성된 인스턴스를 배열에 저장
		}
		AddInfo(info);
	}
	
	
	
	
	
	// 메뉴 2 기능. 친구정보 전체보기 (배열의 데이터 출력)
	void showAllInfo() {
		
		// for each 반복문 : 현재 프로그램에서는 사용불가
		// 반복의 횟수가 지정되어있지 않기 때문에, null을 만날수도 있고, 삭제후 지워지지 않은 중복된 데이터를 만날 수도 있다.  
		// for 반복문 사용 : 반복횟수 지정이 가능하기 때문에 
		System.out.println("전체 정보를 출력합니다===============");
		for(int i=0; i<numOfInfo; i++) {
			books[i].showAllInfo();
		}
	}
	
	
	// 메뉴 3.4기능. 친구정보 검색 후 정보출력/삭제
	// 배열의 index 검색 : 인덱스의 name 기준ㅡ>검색하여 인덱스반환
	int searchIndex(String name) {
		
		// 정상적인 index값은 0 이상의 값이 나오기 때문에, 찾지 못했을 때 구분 값으로 -1을 사용.
		int searchIndex=-1;   
		
		// 배열의 반복으로 name 값을 비교해서 index 값을 찾는다
		for(int i=0; i<numOfInfo; i++) {
//			if(Books[i].checkName(name)) {
			if(books[i].equals(name)) {
				searchIndex=i;
				break;
			}
		}
		return searchIndex;
	}
	
	
	// 메뉴 3 기능. 친구정보 검색 후 정보출력
	void showInfo() {
		System.out.println("검색하고자하는 이름을 입력하세요.");
		String name=kb.nextLine();
		
		if(searchIndex(name)<0) {
			System.out.println("찾으시는 이름의 정보가 없습니다.");
		}
		else
			System.out.println("----------------------------------");
			books[searchIndex(name)].showBasicInfo();
			System.out.println("----------------------------------");
	}
	
	
	
	// 메뉴 4 기능. 친구정보 검색 후 정보삭제
	void deleteInfo() {
		System.out.println("삭제하고자하는 이름을 입력하세요.");
		String name=kb.nextLine();
		
		if(searchIndex(name)<0) {
			System.out.println("삭제하고자하는 이름의 정보가 없습니다.");
		}
		else
			// 삭제 위치에서 왼쪽으로 시프트
			for(int i=searchIndex(name); i<numOfInfo-1; i++) {
			books[i]=books[i+1];
			}
		// 삭제가 되었으므로 요소의 갯수도 -1
		numOfInfo--;
		System.out.println("요청하신 이름의 정보를 삭제했습니다.");
	}

	
	
	
	// 메뉴 5 기능. 친구정보 검색 후 정보수정
	void editInfo() {
		System.out.println("수정하고자하는 이름을 입력하세요.");
		String name=kb.nextLine();
		String editName =books[searchIndex(name)].name;
		
		
		if(searchIndex(name)<0) {
			System.out.println("찾으시는 정보가 없습니다.");
			return;
		}
		else
			
			System.out.println("수정데이터 입력을 시작합니다.");
			System.out.println("이름은 "+editName+"입니다.");
			System.out.println("전화번호를 입력해주세요.");
			String phoneNum=kb.nextLine();
			System.out.println("주소를 입력해주세요.");
			String addr=kb.nextLine();
			System.out.println("이메일를 입력해주세요.");
			String email=kb.nextLine();
			
			PhoneInfor info=null;
	
			
			// 저장된 인스턴스가 기본, 대학, 회사, 동회회인지에 따라 달라짐.  
				
			if(books[searchIndex(name)] instanceof PhoneUnivInfor) {
				System.out.println("전공을 입력해주세요.");
				String major=kb.nextLine();
				System.out.println("학년을 입력해주세요.");
				String grade=kb.nextLine();
				
				info=new PhoneUnivInfor(editName, phoneNum, addr, email, major, grade);
				
				
			}else if(books[searchIndex(name)] instanceof PhoneCompanyInfor) {
				System.out.println("회사를 입력해주세요.");
				String company=kb.nextLine();
				System.out.println("부서를 입력해주세요.");
				String dept=kb.nextLine();
				System.out.println("직급를 입력해주세요.");
				String jop=kb.nextLine();
				
				info=new PhoneCompanyInfor(editName, phoneNum, addr, email, company, dept, jop);
				
			}else if(books[searchIndex(name)] instanceof PhoneCafeInfor) {
				System.out.println("동호회 이름을 입력해주세요.");
				String cafeName=kb.nextLine();
				System.out.println("닉네임을 입력해주세요.");
				String nickName=kb.nextLine();
				
				info=new PhoneCafeInfor(editName, phoneNum, addr, email, cafeName, nickName);
			
			}else if(books[searchIndex(name)] instanceof PhoneInfor){
				info=new PhoneInfor(editName, phoneNum, addr, email);
			}
			
			// 배열에 새로운 인스턴스를 저장
			books[searchIndex(name)]=info;

			System.out.println("요청하신 이름의 정보를 수정했습니다.");
		}
	
} //class end