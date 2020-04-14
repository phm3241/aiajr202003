package Fruit;

public class FruitBuyer2 {

	// 속성 => 변수
	// 	- 보유한 나의 돈
	// 	- 사과의 갯수
	
	int myMoney=100000;
	int numOfApple=0;
	

	// 구매기능 => 메서드
	// 1. 셀러 찾기(받기) 
	// 2. 지출할 돈 정의
	// 3. 셀러에게 돈을주고 판매요청 ㅡ> 사과의 갯수
	// 4. 사과의 갯수를 받은 사과의 갯수만큼 증가시킨다.
	// 5. 지출한 돈은 나의 돈에서 차감한다. 
	// 반환하거나 처리해야할 것이 없다. ㅡ> void
	
	void buyApple(FruitSeller2 seller, int money) {
		
		int num=seller.saleApple(money); 
		numOfApple += num;
		myMoney -= money;
	}
	
	void showBuyResult() {
		System.out.println("현재 지출금액: "+myMoney);
		System.out.println("현재 지출금액: "+numOfApple);
		
	}

}
