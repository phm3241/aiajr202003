package op;

public class LogicOp {

	public static void main(String[] args) {
		
		// 정수형 데이터 두개를 받는다.
		// int num1 = 10, num2 = 20;  이렇게 변수 초기화 할 수도 있다.
		
		int num1 = 10;  // 사용자에게 받은 첫번째 숫자 
		int num2 = 20;  // 사용자에게 받은 두번쨰 숫자
		
		// num1 이 num2 보다 큰지 확인. 
		// 큰 경우 ㅡ> true ,  작은 경우 ㅡ> false
		// 나중에는 같을 경우 어떻게 처리할지 고민해야한다.
		boolean check1 = num1 > num2; 
		boolean check2 = num1 == num2; 
			
		
		// if(check2)와 if(num1 == num2)는 같다.	
		if(num1 == num2) {
			System.out.println("num1의 값은 num2의 값과 같습니다.");
		} else {
			System.out.println("num1의 값은 num2의 값은 다릅니다.");			
		}
				
		
		if(check1) {
			System.out.println("num1의 값이 num2의 값보다 큽니다.");
		} else {
			System.out.println("num1의 값이 num2의 값보다 큽니다.");			
		}
		
		
		
		
		// 예제) 성인 여성 중 기혼자에게만 메시지를 출력합니다. 
		// 조건 : 성인, 여성, 기혼자
		int age = 20;
		char gender = 'w';
		boolean mCheck = true;
		
		boolean result = age>19 && gender =='w' && mCheck;
		
		if(result) {
			System.out.println("메시지를 보냅니다.");
		}
		
	
	}
}



