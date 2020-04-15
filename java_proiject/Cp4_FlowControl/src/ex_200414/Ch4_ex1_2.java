package ex_200414;

public class Ch4_ex1_2 {

	public static void main(String[] args) {
//		[1] 다음의 문장들을 조건식으로 표현하라.

//		5. char형 변수 ch가 영문자(대문자 또는 소문자)일 때 true인 조건식

		char ch='b';
		if (('A'<=ch && ch<='Z') || ('a'<=ch && ch<='z')) {
			System.out.println("true");
		}	
		
		
//		6. int형 변수 year가 400으로 나눠떨어지거나 또는 4로 나눠떨어지고 100으로나눠떨어지지않을 때 true인 조건식

		int num=4;
		if (num%400==0 || (num%4==0 && num%100 != 0)) {
			System.out.println("true");
		}
		
		
//		7. boolean형 변수 powerOn가 false일 때 true인 조건식
		
		boolean powerOn = false;
		if (!powerOn) {
			System.out.println("true");
		}

		
//		8. 문자열 참조변수 str이 “yes”일 때 true인 조건식
		String str="yes";
		if (str=="yes") {
			System.out.println("true");
		}

	}
}

