package Fruit;

public class FruitSeller2 {

	// 속성 => 변수
	//   - 사과의 갯수 
	//   - 수입
	//   - 사과의 가격
	
	int numOfApple=10;
	int myMoney=0;
	final int price=1000;
	
	
	// 기능 => 메서드
	// 1. 돈을 받는다. ㅡ> 매개변수  int money
	// 2. 받은 돈의 사과의 갯수를 구한다. 
	// 3. 나의 사과 갯수에서 반환해야하는 사과의 갯수를 빼준다.
	// 4. 받은 금액은 나의 수입으로 더해준다. 
	// 5. 사과의 갯수를 반환한다. ㅡ> 반환 데이터 int return 사과의 갯수
	
	int saleApple(int money) {
		
		int num=money/price;
		numOfApple -= num;
		myMoney+=money;
		return num;
	}

	void showSaleResult() {
		System.out.println("현재 사과 갯수는: " +numOfApple);
		System.out.println("판매금액은: " +myMoney);
	}
	
	
	
	
	
	
	
}
