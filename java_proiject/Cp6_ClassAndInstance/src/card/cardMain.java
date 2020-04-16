package card;

public class cardMain {

	public static void main(String[] args) {
	
		// 속성 4개를 모두 묶어서 클래스로 만들고, 인스턴스로 했을 떄, 
		// 카드 52장을 만드려면, 계속 인스턴스 생성 
		
		//인스턴스 생성
		//card c1 = new card();
	    //c1.kind="Heart";
	    //c1.number=7;
		card c1=new card("Heart",7);
		
		

		
		
	    //인스턴스 생성
	    card c2=new card();
	    c2.kind="Spade";
	    c2.number=4;
	    
	    System.out.println("첫번째 카드는 "+c1.kind+"이고, 숫자는 "+c1.number+" 카드의 높이는 "+c1.height+"이고, 폭은 "+c1.width);
	    System.out.println("두번째 카드는 "+c2.kind+"이고, 숫자는 "+c2.number+" 카드의 높이는 "+c2.height+"이고, 폭은 "+c2.width);
	    
	    
	    // static으로 변하지 않는 속성인 폭, 높이를 묶어주면, 
	    // 카드 52장 만들고, 규격 수정할 떄, 변수 수정 한번만 하면 된다. 
	    card.width=50;
	    card.height=125;
	    
	    System.out.println("첫번째 카드는 "+c1.kind+"이고, 숫자는 "+c1.number+" 카드의 높이는 "+c1.height+"이고, 폭은 "+c1.width);
	    System.out.println("두번째 카드는 "+c2.kind+"이고, 숫자는 "+c2.number+" 카드의 높이는 "+c2.height+"이고, 폭은 "+c2.width);
	    
	    
	    
	
	}
}
