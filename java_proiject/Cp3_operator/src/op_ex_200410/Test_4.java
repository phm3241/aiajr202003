package op_ex_200410;

public class Test_4 {

	public static void main(String[] args) {
		
		/* 연산챕터_문제4.
		   a= {{(25+5)+(36/4)}-72}*5, b= {{(25x5)+(36-4)}-71}/4, c=(128/4)*2 일 때
		   a>b>c 가 참이면 true 아니면 false를 출력하는 프로그램 작성 */
		
		int a = (((25+5)+(36/4))-72)*5;    // -165
		int b = (((25*5)+(36-4))-71)/4;    // 21
		int c = (128/4)*2;                 // 64

		if(a>b && b>c) {                   // 만약 a>b 그리고 b>C가 
		   System.out.println("true");     // 참이면, true 출력    
		}else {
		   System.out.println("false");    // 참이 아니면, false 출력
		}
		
//		System.out.println(a>b && b>c);   바로 출력해도 true, false로 결과값이 출력되기는 함   

	}

}
