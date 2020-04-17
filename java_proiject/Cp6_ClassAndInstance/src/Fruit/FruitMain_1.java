package Fruit;

/* 보통 주석 달 때 이렇게 이 위치에 이런내용으로 달아두기!
작성자 : 박혜미
수정일 :  2020.04.17
수정내용 : 생성자를 통한 변수 초기화, 현재 데이터 출력 메서드 생성
*/
public class FruitMain_1 {
	
	public static void main(String[] args) {
		
		// seller1 객체 생성 : 매개변수에서 받은 속성값으로 초기화
		FruitSeller seller1=new FruitSeller(30,0,1000);
		// seller2 객체 생성 : 매개변수에서 받은 속성값으로 초기화
		FruitSeller seller2=new FruitSeller(20,0,1500);
		// seller3 객체 생성 : 디폴트 생성자에 있는 속성값으로 초기화 
		FruitSeller seller3=new FruitSeller();
		
		
		// buyer 객체 생성
		FruitBuyer buyer=new FruitBuyer(10000,0);
		
		//seller1에게 구매
		buyer.buyApple(seller1, 3000);
		
		//seller2에게 구매
		buyer.buyApple(seller2, 3000);
		
		//seller3에게 구매
		buyer.buyApple(seller3, 4000);
		
		
		System.out.println("판매자 1의 현재 현황");
		seller1.showSaleResult();
		System.out.println("판매자 2의 현재 현황");
		seller2.showSaleResult();
		System.out.println("판매자 3의 현재 현황");
		seller3.showSaleResult();
		
	}
}
