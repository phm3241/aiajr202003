package ex_200413;

public class ex14 {

	public static void main(String[] args) {
//		문제 14. 다음 식을 만족하는 조합을 찾는 프로그램 작성. 
//		  A B
//		+ B A
//		------
//		  9 9

		int sum = 0;
		
		for(int A=0; A<10; A++) {
			
			for(int B=0; B<10; B++) {
			
			sum = A+B;
			
			// 먼저 A+B=9의 조합을 찾음 (십의자리끼리, 일의자리끼리 계산할떄)
			if (sum==9)
//				System.out.println("A+B= "+A+ "+"+B+"="+sum);
				
				//조합하여 출력...고민중..
//				System.out.println("---------------");
				System.out.println(A+B+"+"+B+A+"="+"99");
			}
		}

		
	}
		
}
		
		
		



