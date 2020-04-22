package PhoneBook_Try2;

import java.util.Scanner;

/*
Project : ver 0.20
"프로그램 사용자로부터 데이터 입력"
프로그램 사용자로부터 데이터를 입력 받아 클래스의 인스턴스를 생성하는 것이
핵심.
단 반복문을 이용해서 프로그램의 흐름을 계속 유지하도록 한다.
프로그램 종료를 하지 않으면, 다음과 같은 과정이 반복적으로 이루어짐.

키보드로부터 데이터 입력 
↓
입력 받은 데이터로 인스턴스 생성
↓
생성된 인스턴스의 메소드 호출

*/

public class PhoneBookManager {
	
	
	// 변수
	public static PhoneInfor[] info;
	int count;
	Scanner sc;
	
	// 생성자
	PhoneBookManager(){
		info=new PhoneInfor[100];
		count=0;
		sc=new Scanner(System.in);
	}
	
	
	// 메서드1-저장 : 사용자 데이터입력(이름, 전화번호, 생년월일 정보) ㅡ> 인스턴스생성
	public PhoneInfor creatInstance() {
		
		PhoneInfor info=null;   // return
		System.out.println("친구 정보를 입력하세요");
		System.out.println("이름을 입력하세요");
		String name=sc.nextLine();                
		System.out.println("전화번호를 입력하세요");
		String phoneNumber=sc.nextLine();
		System.out.println("생년월일을 입력하세요");
		String birthday=sc.nextLine();
		
		
		return info;
		
	}
	
	// 메서드2-저장 : 인스턴스 ㅡ> 배열에 추가
	public void addInfo() {
		
		// 배열에 인스턴스 하나씩 추가
		info[count]=creatInstance(); 
		count++;
	}
	
	// 메서드3-검색 : 이름을 기준으로 데이터 검색 ㅡ> 배열에서 해당 인덱스 반환
	public int searchIndex() {
		
		// 변수 초기화(검색한 이름) : 검색한 이름이 없을 떄를 생각해서 -1로 초기화
		int searchInfo = -1;
		
		// 사용자 이름 검색
		System.out.println("이름을 입력하세요");
		String searchName = sc.nextLine();     
		
		// 검색한 이름을 배열의 전체저장공간이 아닌, 정보가 저장된 갯수만큼 반복하며 확인
		for(int i=0; i<count; i++) {           
			if(info[i].checkName(searchName)) {   
				searchInfo=i;
				break;
			}
		} 
		
		if(searchInfo<0);
			System.out.println("찾는 정보가 없습니다");
		return searchInfo;

	} 
	
	
	
	//▶ 생각중...
	// 메서드4-검색 후 출력 : 이름을 기준으로 데이터를 찾아서 해당 데이터의 정보를 출력
	void searchInfo() {
		System.out.println(info[searchIndex()]);
	}

	//▶ 생각중...
	// 메서드5-검색 후 삭제 : 이름을 기준으로 데이터를 찾아서 해당 데이터를 삭제
	// 데이터 삭제 후 남아있는 데이터 처리는 데이터를 빈 공란이 없이 순차적으로
	// 재정리 2번이 삭제되었다면 3번 이후 데이터들의 주소 값이 -1 처리되어 재저장.	
	void deleteInfo() {  // 
		for(int i=searchIndex(); i<count-1; i++) {
			info[i]=info[i+1];
		}
		count--;
	}
	
	
	
	// 메서드6 : 전체리스트 출력기능
	void showAllData() {
		for(int i=0; i<count; i++) {  
			info[i].showInfo();
			System.out.println("----------------------");
		}
	}


}//class end
	
	
	
	
	
	
	

