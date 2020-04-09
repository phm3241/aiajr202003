// 예제) 유니코드 65의 문자를 출력하시오. 

package ex_1;

public class Test_9_charToCode {

	public static void main(String[] args) {
		
		char ch = 'A';  
		// 문자타입변수 ch 선언하고, 'A' 로 초기화
		// 문자 'A'는 저장될 때는 유니코드의 숫자인 65로 숫자가 저장된다.
		// 따라서 char ch='\u0041'(유니코드를 표현)로 바꿔써도 같다.
								
				
		int code = (int)ch; 
		// ch에 저장된 값을 int형으로 변환한다. 
		// 정수형 변수 code에 대입한다. 

		
		System.out.println(ch); 
		// 문자타입 변수 ch를 출력한다. 
		// 메모리에 저장은 유니코드 숫자인 65로 저장되었지만, 
		// 출력은 상관없이 'A' 그대로 출력된다. 
		
		System.out.println(code); 
		// 정수타입 변수 code를 출력한다.  
		// 문자타입 'A'를 정수형으로 형변환해서 대입했기 때문에
		// 65가 출력된다. 
	}

}
