package op;

public class ArithOp {

	public static void main(String[] args) {
		
		// 1. 정수타입의 숫자 두개를 받는다. ㅡ> 변수 선언
		int num1;
		int num2;
		
		num1 = 10;
		num2 = 3;
				
		// 2. 덧셈 연산 ㅡ> 결과를 출력하자.
		int result = num1 + num2;
		System.out.println("num1 + num2 ="+ result);
										
		// 3. 빼기 연산 ㅡ> 결과출력
		result = num1 - num2;
		System.out.println("num1 - num2 ="+ result);
		
		// 4. 곱의 연산 ㅡ> 결과출력
		result = num1 * num2;
		System.out.println("num1 * num2 ="+ result);
		
		// 5. 나누기 연산 ㅡ> 결과출력 (몫)
		result = num1 / num2;
		System.out.println("num1 / num2 ="+ result);
		
		// 6. 나누기 연산 ㅡ> 결과출력 (나머지)
		result = num1 % num2;
		System.out.println("num1 % num2 ="+ result);

		
	}

}
