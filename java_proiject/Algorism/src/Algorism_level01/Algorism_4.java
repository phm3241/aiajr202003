package Algorism_level01;

public class Algorism_4 {

	public static void main(String[] args) {
		// 4. 두 수중 큰 수 찾기
		//해결할 수 있는 방법을 순차적으로 기술하세요.

		// 1- 두 숫자를 받는다. 혹은 두 숫자를 저장한다. a, b
		int a = 10;
		int b = 20;
		
		
		// 2- a=b이면 a=b를 출력한다. a > b 이면,  a를 출력하고, 아니면  b를 출력한다.
		int result = a==b ? a=b : a > b ? a : b;
		
		System.out.println( a +", " + b + " 중 큰 수는 " + result + "입니다");

	
	}

}
