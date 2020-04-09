// 예제) 유니코드 65의 문자를 출력하시오. 

package ex_1;

public class Test_10_codeToChar {

	public static void main(String[] args) {
		
		int code = 65;   
		// 정수타입 변수 code를 선언하고, 정수 65를 초기화.
		// 65를 16진수형태로 표시한 int code = 0x0041;로 표시해도 같다.
		
		
		
		char ch = (char)code;    
		// 정수타입이었던 변수 code를 문자타입으로 형변환한다.
		// 65는 형변환되어 유니코드 값인 'A'로 문자타입 변수 ch에 대입된다. 

		
		System.out.println(code);
		// 정수타입 변수로 선언된 code의 초기값인 정수 65가 출력된다. 
		
		
		System.out.println(ch);
		// 정수타입 변수 code가 문자타입으로 형변환되어 
		// 문자타입 변수 ch에 대입되었으므로, 
		// 숫자 65는 유니코드 값인 'A'출력된다.
	}

}
