package Fruit;

public class FruitMain {

	public static void main(String[] args) {
		// 사과 판매 시뮬레이션 프로그램
		// 사과장수 : 개념정의 ㅡ> 속성, 기능
		// 구매자 : 개념정의 ㅡ> 속성, 기능
		
		// 클래스 정의
		// class FruitSeller
		// class FrutiButer
		// class main : 프로그램을 구성, main 메서드에서 조립
		//----------------------------------------------
		
		// 프로그램 구성. 조합. 
		// 셀러생성 : 인스턴스화 ★★★★★
		FruitSeller seller=new FruitSeller();
		// new FruitSeller() ㅡ> 객체생성, 메모리에 변수와 변수의 데이터와 메서드 코드가 저장된다. 
		
		// 구매자 생성 : 인스턴스화 ★★★★★
		FruitBuyer buyer = new FruitBuyer();
		
		// 구매자가 사과를 구매
		buyer.buyApple(seller, 5000);
		System.out.println("구매자가 5000원을 지불해서 사과를 구매했습니다.");
		System.out.println("-------------------------------------");
		
		// 시뮬레이션의 결과 출력
		System.out.println("판매자 판매 정보 출력");
		System.out.println("현재 사과의 갯수: "+seller.numOfApple);
		System.out.println("판매금액: "+seller.myMoney);
		
		System.out.println("-------------------------------------");
		System.out.println("구매자의 정보");
		System.out.println("현재 보유한 금액: "+buyer.myMoney);
		System.out.println("보유한 사과의 갯수: "+buyer.numOfApple);
		
		
		
		
		

	}

}
