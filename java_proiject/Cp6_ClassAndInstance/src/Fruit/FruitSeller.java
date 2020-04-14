package Fruit;

public class FruitSeller {

		// 속성 => 변수
		//   - 사과의 갯수 
		//   - 수입
		//   - 사과의 가격
		
		// 멤버변수(인스턴스변수) 선언과 초기화
		int numOfApple=20;     // 사과의 갯수
		int myMoney = 0;       // 수입 
		final int price= 1000;       // 사과의 가격, 값이 변경되면 안되는 데이터라서 final붙여서 상수변수로 만들어준다. 

		// 기능 => 메서드
		// 1. 돈을 받는다. ㅡ> 매개변수  int money
		// 2. 받은 돈의 사과의 갯수를 구한다. 
		// 3. 나의 사과 갯수에서 반환해야하는 사과의 갯수를 빼준다.
		// 4. 받은 금액은 나의 수입으로 더해준다. 
		// 5. 사과의 갯수를 반환한다. ㅡ> 반환 데이터 int return 사과의 갯수

		int saleApple(int money) {  // 반환타입인 int 적어주고 시작. 매개변수 int money 적어주기 
			int num=money/price;
			
//			numOfApple = numOfApple - num;
			numOfApple-=num;
			
//			myMoney = myMoney + money; 
			myMoney += money; 
						
			return num;
			
		}
		

	}


