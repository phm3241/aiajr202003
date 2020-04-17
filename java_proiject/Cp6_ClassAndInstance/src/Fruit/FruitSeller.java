package Fruit;

/* 보통 주석 달 때 이렇게 이 위치에 이런내용으로 달아두기!
작성자 : 박혜미
수정일 :  2020.04.17
수정내용 : 생성자를 통한 변수 초기화
*/
public class FruitSeller {

		// 속성 => 변수
		//   - 사과의 갯수 
		//   - 수입
		//   - 사과의 가격
		
		// 멤버변수(인스턴스변수) 선언과 초기화
		// int numOfApple=20;     // 사과의 갯수
		// int myMoney = 0;       // 수입 
		// final int price= 1000;       // 사과의 가격, 값이 변경되면 안되는 데이터라서 final붙여서 상수변수로 만들어준다. 

		// 수정 : 변수의 명시적 초기화 변경
		int numOfApple;     // 사과의 갯수
		int myMoney;       // 수입 
		final int APLLE_PRICE;       // 사과의 가격, 값이 변경되면 안되는 데이터라서 final붙여서 상수변수로 만들어준다. 
		
		// 생성자1
		FruitSeller(){
//			numOfApple=20;
//			myMoney=0;
//			APLLE_PRICE=1000;
			this(20, 0, 1000); 
			// this는 또 다른 생성자를 호출한다.
			// 이 때, 생성자는 이름이 같기 때문에 매개변수가 같은(갯수, 타입) 
			// 생성자2를 가르키게 되어 구조를 가져와 초기화 할 수 있게 된다.    	
		}
		
		FruitSeller(int price){
			this(20, 0, price);  // 이렇게 매개변수 하나만도 가능하긴 하지만 
		}

//		FruitSeller(int num){
//			this(num, 0, price);  // 이렇게하면 받는 매개변수 정수가 price로 받았는지 num으로 받았는지 모르게 되어 사요할 수 없다.  
//		}
		
		// 생성자2 : 매개변수 있는
		FruitSeller(int numOfApple, int money, int price){  
			this.numOfApple=numOfApple;  
			// 변수 이름이랑 똑같이 쓰게 되면, 갈색으로 표현됨(지역변수) 그냥 쓰면 지역변수 우선.
			// 앞에 this.를 붙여주면, this가 이 인스턴스 자체를 가르키기 때문에 
			// 인스턴스 안에있는 변수들를 가져올 수 있다. 
			myMoney=money;   // 파란색으로 표현되는 변수는 인스턴트 변수
			APLLE_PRICE=price;
		}
		
		
		
		
		// 기능 => 메서드
		// 1. 돈을 받는다. ㅡ> 매개변수  int money
		// 2. 받은 돈의 사과의 갯수를 구한다. 
		// 3. 나의 사과 갯수에서 반환해야하는 사과의 갯수를 빼준다.
		// 4. 받은 금액은 나의 수입으로 더해준다. 
		// 5. 사과의 갯수를 반환한다. ㅡ> 반환 데이터 int return 사과의 갯수

		int saleApple(int money) {  // 반환타입인 int 적어주고 시작. 매개변수 int money 적어주기 
			int num=money/APLLE_PRICE;
			
//			numOfApple = numOfApple - num;
			numOfApple-=num;
			
//			myMoney = myMoney + money; 
			myMoney += money; 
						
			return num;
		}	
		void showSaleResult() {
			System.out.println("현재 사과 갯수는: " +numOfApple);
			System.out.println("판매금액은: " +myMoney);
		}

	}


