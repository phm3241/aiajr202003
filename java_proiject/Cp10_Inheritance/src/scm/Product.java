package scm;

// 상품 객체들의 상위클래스
public class Product {

	final int price;         // 제품의 가격, final 변하지 않는 상수값으로. 생성자통해서 초기화되도록.
	final int bonusPoint;    // 제품의 포인트, final 변하지 않는 상수값으로.  생성자통해서 초기화되도록.
	
	Product(int price){
		
		this.price=price;
		this.bonusPoint=this.price/10;    // 가격만 받으면 보너스가 결정되도록. 
		
	}
}
