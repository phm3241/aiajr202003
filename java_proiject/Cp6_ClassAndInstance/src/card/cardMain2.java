package card;

public class cardMain2 {

	public static void main(String[] args) {
	
		// 카드 52장을 반복문으로 만들기. ex구구단
		// 모양 4개(Spade, Clover, Heart, Diamond)
		// 숫자 13개(1~13)
		
		for(int i=0; i<4; i++) {
		
			 for(int j=1; j<14; j++) {
			 
			 	String kind= "";
			 
			 	switch(i) {			
					case 0:
						kind="Spade";
						break;
					case 1:
						kind="Clover";
						break;
					case 2:
						kind="Heart";
						break;
					case 3:
						kind="Diamond";
						break;
						
			 	}	
					card c1 = new card();
					c1.kind = kind;
					c1.number=j;
					
					System.out.println("카드 폭은 "+card.width+"카드 높이는 "+card.height+"카드 모양은 "+c1.kind+"이고, 숫자는 "+c1.number);
			 	}
			 }
		}  
	
}

