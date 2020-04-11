package Algorism_level01;

public class Algorism_1 {

	public static void main(String[] args) {
		
		// 1. 두 수의 차 구하기 - 큰 수에서 작은 수
		// 해결할 수 있는 방법을 순차적으로 기술하세요.

		
		//1- 두 숫자를 받는다. 혹은 두 숫자를 저장한다. a, b
		int a = 25;
		int b = 30;
		
		
		// 2- a >= b 이면, a - b의 결과값을 출력하고, 아니면 b - a의 결과값을 출력한다. 
 		int result = a >= b ? a-b : b-a;
 				
 				
		System.out.println(a + ", " + b + "의 차이는 " + result + "입니다.");
			

	}

}
