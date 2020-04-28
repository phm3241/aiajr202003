package ex;

public class DivideByZero {

	public static void main(String[] args) {
		
		
		int num1=10;
		int num2=0;
		
		// int divide=num1/num2;
		// java.lang.ArithmeticException
		// 0으로 나누었을때 발생하는 예외타입
		
		
		try {
			
			int divide=num1/num2;          // 예외 발생  !예상!  지점
			System.out.println("연산의 결과는 "+divide); // 예외발생 하면! ㅡ> 바로 catch 부분 실행O
		
		// 예외발생 하면! ㅡ> catch 부분 실행O
		// 예외발생 안하면! ㅡ> catch부분 실행X
		}catch(ArithmeticException e) {
			System.out.println("0으로 나눌 수 없습니다.");
			System.out.println(e.getMessage());
			e.printStackTrace();   // 예외발생을 확인해볼 수 있는 메서드?
			return;
		} finally {  
			System.out.println("무조건 실행하는 finally블럭");
		}
		// finally는 
		// 예외가 발행여부와 관계없이 실행됨. return을 만나도 실행됨.
		// try-finally 로만 쓰기도 한다. 마지막에 반드시 뭔가를 실행해야하는 경우. 
		
		
		
		
		// System.out.println("연산의 결과는 "+divide);  이 코드의 위치는 try안쪾에 같이 있어야한다.
		// 일이 하나의 묶음이기 때문에?
		
		System.out.println("프로그램을 종료합니다.");
		
	}

}
