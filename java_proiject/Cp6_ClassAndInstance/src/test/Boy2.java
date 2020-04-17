package test;

// import card.card; 
// 다른 패키지의 클래스 사용하려면 import 패키지이름. 클래스이름을 해주면
// 이제는 card c= new card(); 쓸 수 있다. 

/* 보통 주석 달 때 이렇게 이 위치에 이런내용으로 달아두기!
작성자 : 박혜미
수정일 :  2020.04.17
수정내용 : 생성자를 통한 변수 초기화
*/
public class Boy2 {  
	//test.Boy2 (원래 이 클래스의 이름은 '패키지이름. 클래스이름'으로 써야한다.) 
	// card.card c = new Card(); 
	// 다른 패키지의 클래스를 인스턴스로 생성할때는 원래 클래스 이름으로 작성해야한다.  
	
	
	// 구슬의 갯수 
	int numOfMarble; 
	
	// 생성자
	Boy2(int num){
		numOfMarble=num;
	}
	
	// 구슬의 갯수 설정
	void setMarble(int num) {
		numOfMarble=num;		
	}
	
	void gameWin(Boy2 boy, int num) {
		numOfMarble+=num;
		boy.numOfMarble-=num;
	}
	void showData() {
		System.out.println("현재 보유한 구슬의 갯수는 "+numOfMarble+"개 입니다.");
	}



public static void main(String[] args) {
	
	// 철수 생성
	Boy2 boy1=new Boy2(15);  // 생성자의 매개변수로 아래 참조변수로 불러오는 코드를 줄일 수 있다. 
	// 영희 생성
	Boy2 boy2=new Boy2(9);   // 생성자의 매개변수로 아래 참조변수로 불러오는 코드를 줄일 수 있다.
	
	// 철수는 구슬을 15개 보유, 영희는 구슬을 9개 보유  ㅡ> 생성자로 처리하여 이 코드부분을 줄일 수 있다. 
//	boy1.setMarble(15);
//	boy2.setMarble(9);
	
	System.out.println("철수는 구슬을 "+boy1.numOfMarble+"개 보유, 영희는 구슬을 "+boy2.numOfMarble+"개 보유");
	System.out.println("-------------------------------------------");
	
	
	// 1차 게임에서 어린이 1은 어린이 2의 구슬 2개를 획득한다. 
	System.out.println("1차 게임에서 철수는 영희의 구슬 2개를 획득한다. ");
	boy1.gameWin(boy2, 2);
	
	System.out.println("철수");
	boy1.showData();
	
	System.out.println("영희");
	boy2.showData();
	
	System.out.println("-------------------------------------------");
	
	// 2차 게임에서 어린이 1은 어린이 2의 구슬 2개를 획득한다. 
	System.out.println("2차 게임에서 영희는 철수의 구슬 7개를 획득한다. ");
	boy2.gameWin(boy1, 7);
	
	System.out.println("철수");
	boy1.showData();
	
	System.out.println("영희");
	boy2.showData();

	System.out.println("-------------------------------------------");
}	
}	
