package scm;

public class ScmMain {

	public static void main(String[] args) {
		
		// 상속관계에서 "다형성"
		// 상위클래스 타입의 참조변수 = 하위클래스의 인스턴스
		Product p=new Tv(100);   // 다형성! 
//		System.out.println(p1);
		
		Tv tv=new Tv(10);
		Computer com=new Computer(20);
		Audio aud=new Audio(30);
		
		// 제품이 3개일때는 아래처럼 그냥 더해도 되지만,
		int sum=tv.price+com.price+aud.price;
		
		// 제품 여러개일 때 일괄적으로 관리하기 위해
		// 다형성. 자동형변환
		// 객체들을 하나의 타입으로 만들 수 있다. 
		Product p1=(Product) tv;  // 원래는 이렇게 형변환 
		Product p2=com;
		Product p3=aud;
		
		// 상위클래스 타입의 배열 생성
		// 위에 p1,p2,p3와 같은 맥락이다
		Product[] products=new Product[3];
		products[0]=new Tv(100);
		products[1]=new Computer(200);
		products[2]=new Audio(300);
		
		// 메모리에는 있지만 참조변수에 따라서 쓸 수 있는 것이 결정된다. 
//		products[0].display(); //따라서 이렇게 쓰면 쓸 수가 없다. 
		((Tv)products[0]).display(); 
		// 명시적인 형변환.  상위타입의 변수 ㅡ> 하위타입의 변수 

		
		
		
		// 형변환 오류 확인. 해결하기
		// ((Computer)products[0]).programming(); 은 형변환 오류. products[0]에는 Tv객체가 있기 때문에.  
		// instanceof 연산자 ㅡ> p1 instanceof Computer ㅡ> p1을 Computer로 형변환 가능한지 ==> true/false를 반환
		// 참조변수가 참조하는 인스턴스를 특정 클래스 타입으로 형 변환이 가능한지 여부를 확인하는 
		if(products[0] instanceof Computer) {
			((Computer)products[1]).programming();  
		}
		
		// 바로 확인가능하면 배열인덱스를 바꾸면 되지만, 어려울 수 있으므로, 아래처럼 배열을 확인해서 찾는 방법으로 해결한다. 
		// ((Computer)products[1]).programming();  
		
		// 전달하는 배열에 컴퓨터가 있다면, 프로그래밍을 하겠다.
		for(int i=0; i<products.length; i++) {
			if(products[i] instanceof Computer) {
				((Computer)products[i]).programming();  
			}
		}
		
		//		int sumOfPrice=0;
//		int sumOfPoint=0;
//		
		
		// 제품의 갯수가 많더라도 일괄적으로 관리가 가능하다. 
//		for(int i=0; i<products.length; i++) {
//			System.out.println(products[i]);     // 가지고 있는 제품들 출력
//			sumOfPrice+=products[i].price;       // 전체 제품 가격 합 출력
//			sumOfPoint+=products[i].bonusPoint;  // 전체 제품의 포인트 합 출력
//		
//		}
//		System.out.println("전체 제품의 가격의 합은 : " + sumOfPrice);
//		System.out.println("전체 제품의 포인트의 합은 : " + sumOfPoint);
		
		
		
		
		
		
		
		System.out.println("-------------------------------");
		
		// 구매자가 제품을 구매하는 시뮬레이션
		Buyer buyer=new Buyer();
		
		// 제품 생성
		Tv product1=new Tv(200);
		Computer product2=new Computer(250);
		Audio product3=new Audio(100);
		
		// Tv 구매
		buyer.buy(product1);
		
		// Computer 구매
		buyer.buy(product2);
		
		// Audio 구매
		buyer.buy(product3);
		
		// Computer 구매
		buyer.buy(product2);
		
		// 이부분은 아래 buyer클래스에서 메서드로 만들어 가져오기.
//		System.out.println("현재 보유금액  : "+buyer.money);
//		System.out.println("현재 보유포인트: "+buyer.bonusPoint);
		
		
		buyer.summary();
		

	}
}








