package Ch6_ex_200419;

/*문제2.
다음조건을 만족하는 클래스를 구성하자. 구슬치기와 딱지치기
어린아이가 소유하고 있는 구슬의 개수 정보를 담을 수 있다.
놀이를 통한 구슬을 주고받음을 표현하는 메서드가 존재한다.
두 번째 조건은 두 아이가 구슬치기를 하는 과정에서 구슬의 잃고 얻음을 의미하는 것이다.
조건을 만족하는 클래스를 정의하였다면, 다음조건을 만족하는 인스턴스를 각각 생성하자. ( 하나의 클래스만 작성하자 )
어린이 1의 보유자산  구슬 15개
어린이 2의 보유자산  구슬 9개
인스턴스의 생성이 완료되면 다음의 상황을 main 메서드 내에서 시뮬레이션 하자.
“1차 게임에서 어린이 1은 어린이 2의 구슬 2개를 획득한다”
“2차 게임에서 어린이 2는 어린이 1의 구슬 7개를 획득한다.”
마지막으로 각각의 어린이의 보유 구슬의 개수를 출력하고 프로그램 종료.
*/

public class MarbleGame {
	// 구슬게임의 클래스
	
	// 변수: 구슬의 갯수
	int numOfMarble;
	
	// 생성자: 구슬의 갯수를 매개변수로 받아 객체 생성시 초기화
	MarbleGame(int num){
		numOfMarble=num;
	}
	
	// 메서드1: 게임결과반영, 구슬얻고, 구슬잃고
	void gameWin(MarbleGame player, int num) {
		numOfMarble+=num;
		player.numOfMarble-=num;
		}
	// 메서드2: 현재보유구슬 출력
	void showData() {
		System.out.println("현재 보유한 구슬은 "+numOfMarble+"개 입니다.");
	}
	
	
public static void main(String[] args) {
	// 구슬게임 실행 
	
	MarbleGame player1=new MarbleGame(15);     // 철수 생성
	MarbleGame player2=new MarbleGame(9);      // 영희 생성
	
	System.out.println("1차 게임에서 철수는 영희의 구슬 2개를 획득한다");
	player1.gameWin(player2, 2);
	
	System.out.print("철수는 ");
	player1.showData();
	
	System.out.print("영희는 ");
	player2.showData();
	
	System.out.println("-------------------------------------------");
	System.out.println("2차 게임에서 영희는 철수의 구슬 7개를 획득한다");
	player2.gameWin(player1, 7);
	
	System.out.print("철수는 ");
	player1.showData();
	
	System.out.print("영희는 ");
	player2.showData();
	
	
	/*
	[실행결과]
	1차 게임에서 철수는 영희의 구슬 2개를 획득한다
	철수는 현재 보유한 구슬은 17개 입니다.
	영희는 현재 보유한 구슬은 7개 입니다.
	-------------------------------------------
	2차 게임에서 영희는 철수의 구슬 7개를 획득한다
	철수는 현재 보유한 구슬은 10개 입니다.
	영희는 현재 보유한 구슬은 14개 입니다.
	*/
	}

}
