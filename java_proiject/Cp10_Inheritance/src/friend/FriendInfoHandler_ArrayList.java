package friend;

import java.util.Scanner;

// 입력하고 출력만 하는 클래스
// Friend 타입의 정보를 저장할 배열을 가진다. 
// 친구정보를 저장하는 기능
// 친구정보의 기본정보 출력 기능
// 친구정보 상세정보 출력 기능


public class FriendInfoHandler_ArrayList {
	
	private Friend[] myFriends;    // Friend 타입의 배열 선언
	int numOfFriend;      // 저장된 친구의 정보 갯수 (저장할 배열의 인덱스, 반복의 횟수가 된다)
	Scanner kb;
	
	// 생성자(초기화) : 저장공간(사이즈) 크기를 받아서 배열을 생성
	FriendInfoHandler_ArrayList(int num){   
		myFriends=new Friend[num];
		numOfFriend=0;
		kb=new Scanner(System.in);
	}

	
	// 친구정보를 저장하는 기능
	// 1. 배열에 저장하는 기능
	// 2. 사용자에게 데이터를 받아서 사용자요청에 맞는 인스턴스 생성
	
	// 1. 배열에 저장하는 기능
	void addFriendInfo(Friend f) {
		myFriends[numOfFriend]=f;
		numOfFriend++;
	}
	
	// 2. 사용자에게 데이터를 받아서 사용자요청에 맞는 인스턴스 생성
	// HighFriend / UnivFriend 분류에 맞는 인스턴스
	void addFriend(int choice) {
		
		// 기본정보 받기
		System.out.println("이름을 입력해주세요");
		String name=kb.nextLine();
		System.out.println("전화번호를 입력해주세요");
		String phoneNum=kb.nextLine();
		System.out.println("주소를 입력해주세요");
		String addr=kb.nextLine();
		
		Friend friend=null;
		
		// 1일때 정보받기
		// HighFriend 인스턴스 생성
		if(choice==1) {
			System.out.println("직업을 입력해주세요");
			String work=kb.nextLine();
			friend=new HighFriend(name, phoneNum, addr, work);
			
		// 2일때 정보받기
		// UnivFriend 인스턴스 생성
		}else {
			System.out.println("전공을 입력해주세요");
			String major=kb.nextLine();
			System.out.println("학년을 숫자로 입력해주세요");
			String grade=kb.nextLine();   //nextInt 했을 때 공백이 생기는 문제를 해결하려고 ,Integer.parseInt(grade)을 사용.
//			Integer.parseInt(grade);  // 문자열을 받아서 정수형 데이터로 반환해주는 static메서드. java.lang.에 있음.
//			friend=new UnivFriend(name, phoneNum, addr, major, grade);   이렇게 쓰면 grade가 스트링이니까 오류.
			friend=new UnivFriend(name, phoneNum, addr, major, Integer.parseInt(grade));
			
			
		}
		//addFriendInfo 호출
		addFriendInfo(friend);
		
	}
	
	
	
	
	
	// 친구정보의 기본정보 출력 기능
	void showAllSimpleData() {
		System.out.println("=====친구의 기본정보를 출력합니다=====");
		for(int i=0; i<numOfFriend; i++) {
			myFriends[i].showBasicInfo();
			System.out.println("---------------------------------------");
		}
	}
	
	
	
	// 친구정보 상세정보 출력 기능
	void showAllData() {
		System.out.println("=====친구의 모든정보를 출력합니다=====");
		for(int i=0; i<numOfFriend; i++) {
			myFriends[i].showData();
			System.out.println("---------------------------------------");
		}
	}



}
