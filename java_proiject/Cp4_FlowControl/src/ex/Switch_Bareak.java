package ex;

public class Switch_Bareak {

	public static void main(String[] args) {
		
		// switch문에서 break를 사용했을때
		int menuNum = 2;
		
		switch (menuNum) {
		
		case 1:
			System.out.println("1. Simple JAVA");
			break; // switch문의 {블럭}을 벗어난다.
		
		case 2:
			System.out.println("2. Funny JAVA");
			break;
			
		case 3:
			System.out.println("3. Fantastic JAVA");
			break;
			
		default:
			System.out.println("d. The Best Programing Language");
						
		
		}
		
		System.out.println("Do you liske coffee?");
		
		
		
		

	}

}
