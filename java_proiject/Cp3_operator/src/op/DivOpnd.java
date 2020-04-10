package op;

public class DivOpnd {

	public static void main(String[] args) {
		
				
		int num1 = 7;
		int num2 = 3;
		
		// 정수의 나누기 연산
		System.out.println("num1 / num2 = " + num1 / num2);
		
		/* 더하기 였다면, 괄호해야한다.
		System.out.println("num1 / num2 = " + (num1 + num2));*/
		

		// 실수의 나누기 연산 , 3이 자동으로 float타입으로 변환되어 연산됨.
		System.out.println("num1 / num2 = " + 7f/3);
		System.out.println("num1 / num2 = " + 7/3f);


		// 실수의 나누기 연산 , 
		// 먼저 num1이 float타입으로 형변환되고 num2가 float타입으로 변경됨.
		System.out.println("num1 / num2 = " + (float)num1/num2);
		
		
		
	}

}
