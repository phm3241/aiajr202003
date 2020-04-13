package ex;

public class While_Continue {

	public static void main(String[] args) {
		// 1~10까지의 숫자중 3의 배수를 제외하고 출력
		// 1~10까지의 숫자중 3의 배수만 출력
		
//		for(int i=1; i<=10; i++) {
//			System.out.println(i);
//		}


		//3배수만 출력 
		for(int i=1; i<=10; i++) {
			
			if(!(i%3==0)) {      //if의 조건만 다르게 해주면, 3의 배수만 출력하거나!(i%3==0), 3의 배수를 제외하고 출력하거나(i%3==0)
				continue;
			}
						
			System.out.println(i);
			
		}	
						
	}
	
}