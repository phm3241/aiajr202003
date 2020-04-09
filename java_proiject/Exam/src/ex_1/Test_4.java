package ex_1;

public class Test_4 {

	public static void main(String[] args) {
		double num1, num2, result;
		
		num1 = 1.0000001;
		num2 = 2.0000001;
		
		
		// result = num1 + num2;
		result = num1 * num2;
				
				
		System.out.println(num1);
		System.out.println(num2);
		System.out.println(result);
		System.out.println();
		
		// 부동소숫점 오류를 없애기 위한 방법 중 하나로
		// 소숫점 자릿수대로 10의 제곱을 곱해서 정수로 만들어주고 계산.
		// 계산 후 다시 10의 제곱으로 나눠줘서 실수로 만들어 준다. 
		double num3 = num1 * 10000000;
		double num4 = num2 * 10000000;
		double result1 = num3 + num4;
		
		System.out.println(result1/10000000);

	}

}
