package Fruit;

public class FruitMain2 {

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
		FruitSeller2 seller=new FruitSeller2();
		FruitBuyer2 buyer=new FruitBuyer2();
		
		buyer.buyApple(seller, 10000);
		
		
		System.out.println("------------------------------------");
		System.out.println("판매자의 정보");
		seller.showSaleResult();
		System.out.println("------------------------------------");
		System.out.println("구매자의 정보");
		buyer.showBuyResult();

	}

}
