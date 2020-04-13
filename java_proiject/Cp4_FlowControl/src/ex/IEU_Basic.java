package ex;

public class IEU_Basic {

	public static void main(String[] args) {
		
		// 예제1
		if(true) {
			System.out.println("true 일때 출력");
			
		}
		if(false) {
			System.out.println("false 일때 출력");
		}
		
		// 예제 2
		// 노란줄표시. Dead Code 의미없는 코드이다. 조건이 무조건 false니까.
		if(false) {
			System.out.println("true 일때 출력");   
		} else {
			System.out.println("false 일때 출력");			
		}
		
		
		// 예제3-1
		// 출력하지 않음. dead code이다. 
		if (10==5) {
			System.out.println("10은 5와 같습니다.");  			
			
		}
		
		// 예제3-2
		// 출력하지 않음. dead code는 아니다.
		
		int num = 10;   
		
		if (num==5) {
			System.out.println("10은 5와 같습니다.");  			
			
		}
		

				
		
	}
}