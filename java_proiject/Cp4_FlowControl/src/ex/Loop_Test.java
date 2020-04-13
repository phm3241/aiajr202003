package ex;

public class Loop_Test {

	public static void main(String[] args) {

		System.out.println(1);
		System.out.println(2);
		System.out.println(3);
		System.out.println(4);
		System.out.println(5);

		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		
		for(int i=1; i<6; i++) {
			System.out.println(i);
		}
		
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
		
		int i = 1;
		
		while(i <= 5) {
			System.out.println(i);
			i++; // ★ 중요 ★ 탈출의 조건을 적어주는 게 중요.
		}
		System.out.println("ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ");
			
			
		i = 1;
		
		do {
			System.out.println(i);
			i++;
			
		} while(i<=5);{
					
		}
		
	}
	
}