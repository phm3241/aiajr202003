package ex_200414;

public class Ch4_ex9 {

	public static void main(String[] args) {
//		[9] 숫자로 이루어진 문자열 str이 있을 때, 각 자리의 합을 더한 결과를 출력하는 코드를완성하라.
//		만일 문자열이"12345"라면, ‘1+2+3+4+5’의 결과인 15를 출력이 출력되어야 한다. (1)에 알맞은코드를 넣으시오.
//		[Hint] String클래스의 charAt(inti)을 사용
//		[실행결과]
//		15

		String str = "12345";

		int sum = 0;
		
		// str.length()은 문자열의 길이를 구하는 메서드. 문자열을 구성하는 각 글자들의 수
		for(int i=0; i < str.length(); i++) {
//			
			// (1) 알맞은 코드를 넣어 완성하시오.
			
			sum += Character.getNumericValue(str.charAt(i));
			// charAt(int index)는 입력받은 index번째 문자를 반환하는 메서드.
			// Character.getNumericValue()는 char를 문자 그대로 int 숫자로 반환하는 메서드.

		}

		System.out.println("sum="+sum);




	}

}
