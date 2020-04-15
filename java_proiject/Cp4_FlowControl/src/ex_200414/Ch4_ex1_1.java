package ex_200414;

public class Ch4_ex1_1 {

	public static void main(String[] args) {
//		[1] 다음의 문장들을 조건식으로 표현하라.
		
//		1. int형 변수 x가 10보다 크고 20보다 작을 때 true인 조건식

		int x=15;
		if (10 < x && x<20){
			System.out.println("true");
		} 
		 

//		2. char형 변수 ch가 공백이나 탭이 아닐 때 true인 조건식

		char ch=1;
		if (ch!=' ' || ch!='\t') {
			System.out.println("true");
		}
		 

//		3. char형 변수 ch가 ‘x' 또는 ’X'일 때 true인 조건식

		char ch1='X';
		if (ch1 =='x' || ch1 =='X') {
			System.out.println("true");
		}
		 

//		4. char형 변수 ch가 숫자(‘0’~‘9’)일 때 true인 조건식

		char ch2='3';
		if (0<=ch2 && ch2 <='9') {
			System.out.println("true");
		}
		
		
		

	}

}
