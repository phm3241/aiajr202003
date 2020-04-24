package scm;

public class Buyer {

	int money;          // 구매자의 보유금액 
	int bonusPoint;     // 구매자의 보유포인트
	
	Product[] item;     // 구매시에 담을 제품 배열
	int numOfProduct;   // 구매 제품 갯수
	
	// 생성자- 변수들의 초기화를 여기서 하기로.
	Buyer(){
		this.money=1000;
		this.bonusPoint=0;
		this.item=new Product[10];
		this.numOfProduct=0;
	}
	
	// 상속관계가 아닌 개별적인 클래스로 만들었다면, 
	// 이렇게 구매하는 메서들을 제품별로 따로 만들었어야한다.
//	void buy(Tv tv) { }
//	void buy(Computer com) { }
//	void buy(Audio aud) { }
	
	// 제품을 모두 Product 타입의 상속을 통해서 만드면, 
	// Product 참조변수 하나를 매개변수로 tv, com, aud로 갈 수 있다.
	void buy(Product p) { 
		// 구매 상품의 금액과 나의 보유금액 비교해서 구매여부 처리
		if(money<p.price) {
			System.out.println("잔액이 부족해서 구매할 수 없습니다.");
			return;
		}
		
		// 구매처리  
		this.money-=p.price;             // 보유한 금액에서 제품의 금액 차감 
		this.bonusPoint+=p.bonusPoint;   // 보유한 포인트에 제품의 포인트를 추가
		
		item[numOfProduct++]=p;
//		numOfProduct++;  // 이렇게 따로 안쓰고 후위연산자로 
		
		System.out.println(p+"를 구매하셨습니다");
	}

	// 구매 내역을 출력
	void summary() {
		int sum=0;       // 구매 제품의 총액, 지역변수이기 때문에 여기서 초기화
		int points=0;    // 구매 제품들의 포인트 총합
		
		String itemList="";   // 구매 제품의 이름 목록
		
		for(int i=0; i<numOfProduct; i++) {
			itemList+= item[i]+", ";
//			itemList = itemList + (item[i]+", ");
			sum+=item[i].price;
			points+=item[i].bonusPoint;
		}
		
		System.out.println("구매목록===================================");
		System.out.println("구매하신 제품은");
		System.out.println(itemList+"입니다.");
		System.out.println("구매하신 제품들의 총 금액은 "+sum+"원 입니다.");
		System.out.println("구매하신 제품들의 적립될 총 포인트는 "+points+"점 입니다.");
		
	}
}












