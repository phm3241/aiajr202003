package Algorism_level01;

public class Algorism_2 {

	public static void main(String[] args) {
		// 2. 두 수의 차 구하기 - 절대값을 이용하는 방법
		// 해결할 수 있는 방법을 순차적으로 기술하세요.

		// 1- 두 숫자를 받는다. 혹은 두 숫자를 저장한다. a, b
		int a = -1;
		int b = 3;
		
		// 2- a*b < 0 이면, a절대값과 b절대값의 합을 출력한다. a - b 결과를 절대값으로 출력한다.
		int result = a-b == 0 ? 0 : a-b < 0 ? (a-b)*-1:(a-b);
		
		System.out.println(a + ", " + b + "의 차이는 " + result + "입니다.");
		

	}

}
