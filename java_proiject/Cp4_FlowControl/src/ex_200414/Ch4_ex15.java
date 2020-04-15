package ex_200414;

public class Ch4_ex15 {

	public static void main(String[] args) {
//		[15] 다음은 회문수를 구하는 프로그램이다. 회문수(palindrome)란, 숫자를 거꾸로 읽어도앞으로 읽는 것과 같은 수를 말한다. 
//		예를 들면 ‘12321’이나 ‘13531’같은 수를 말한다. (1)에알맞은 코드를 넣어서 프로그램을 완성하시오.
//		[Hint] 나머지 연산자를 이용하시오.
//		[실행결과]
//		12321는 회문수 입니다.

		
		int number = 12321;
		int tmp = number;
		int result =0; // 변수 number를 거꾸로 변환해서 담을 변수

		while(tmp !=0) {

		// (1) 알맞은 코드를 넣어 완성하시오.
			// result는 number를 거꾸로 변환한 숫자이므로,
			// 1. 먼저 number의 1의 자리를 얻기 위해, tmp를 10으로 나눈 나머지를 결과값에 더해준다. 1232.1 ㅡ> result=1 
			// 2. 그리고 number의 10의 자리를 얻기 위해, tmp는 10으로 나눈 몫으로 대입하고 1232.1 ㅡ> tmp=1232
			// 3. tmp를 10으로 나눈 나머지를 얻는다. ㅡ> 123.2 ㅡ> 2 ㅡ> result = 1*10 + 2 (1번에서 얻은 결과값에 10을 곱해주어 10의 자리로 만든다.)
			// 4. 패턴반복 후 tmp가 0이되면 반복끝. 
			result=result*10+tmp%10;     
			tmp=tmp/10;
			
		}

		if(number == result)
			System.out.println( number + "는 회문수 입니다.");
		else 
			System.out.println( number + "는 회문수가 아닙니다.");
	}
}
