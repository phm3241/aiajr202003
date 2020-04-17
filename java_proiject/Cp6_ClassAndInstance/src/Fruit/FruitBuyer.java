package Fruit;

/* 보통 주석 달 때 이렇게 이 위치에 이런내용으로 달아두기!
작성자 : 박혜미
수정일 :  2020.04.17
수정내용 : 생성자를 통한 변수 초기화
*/
public class FruitBuyer {
		
		// 속성 => 변수
		// 	- 보유한 나의 돈
		// 	- 사과의 갯수
		
		// 변수의 명시적 초기화 변경
		int myMoney;
		int numOfApple;
		
		// 생성자
		FruitBuyer(){
			myMoney=5000;
			numOfApple=0;
		}
		
		// 생성자 : 매개변수 있는
		FruitBuyer(int money, int num){
			myMoney=money;
			numOfApple=num;
		}
		
		
		
		
		
		
		// 구매기능 => 메서드
		// 1. 셀러 찾기(받기) 
		// 2. 지출할 돈 정의
		// 3. 셀러에게 돈을주고 판매요청 ㅡ> 사과의 갯수
		// 4. 사과의 갯수를 받은 사과의 갯수만큼 증가시킨다.
		// 5. 지출한 돈은 나의 돈에서 차감한다. 
		// 반환하거나 처리해야할 것이 없다. ㅡ> void
		
		
		//1,2
		// 참조변수란 해당클래스로 만들어진 객체의 주소값을 저장하는 변수이다. 
		// 참조변수는 클래스이름 변수이름 순서로 쓴다. 
		void buyApple(FruitSeller seller, int money) {
			
			// 구매한 사과의 갯수
			int num=seller.saleApple(money); 
			numOfApple += num;
			myMoney -= money;

		}
	}

