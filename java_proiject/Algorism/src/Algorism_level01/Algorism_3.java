package Algorism_level01;

public class Algorism_3 {

	public static void main(String[] args) {
		// 3. 짝수와 홀수 판별하기
		//해결할 수 있는 방법을 순차적으로 기술하세요.

		// 1- 숫자를 받는다. 혹은 숫자를 저장한다. 
		int num = 13;
		
		// 2- 받은 수를 2로 나눈 나머지가 0 이면 "짝수"를 출력한다.
		if (num%2 == 0) { 
			System.out.println(num + "은 짝수 입니다.");		
		
		// 3- 나머지가 0 이 아니라면 "홀수"를 출력한다. 
		} else
			System.out.println(num + "은 홀수 입니다.");		
		
		}
}


