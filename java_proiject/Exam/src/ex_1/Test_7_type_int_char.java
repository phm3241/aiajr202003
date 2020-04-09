// 예제) 대문자 'A'의 유니코드 값과 'Z'의 유니코드 값을 출력하시오.
//      형변환 사용하기

package ex_1;

public class Test_7_type_int_char {

	public static void main(String[] args) {

		
		char ch1 = 'A';  //문자타입의 변수 ch1 선언, 초기화 'A'
		char ch2 = 'Z';  //문자타입의 변수 ch2 선언, 초기화 'Z'  
		
		int num1 = ch1;       // 형변환 하지 않아도 'A'의 유니코드 값인 65로 대입됨.
		int num2 = (int)ch2;  // 명시적 형변환이 이루어짐
		
		
		System.out.println("문자 A의 유니코드 값:"+num1);  // 문자 A의 유니코드 값: 65
		System.out.println("문자 Z의 유니코드 값:"+num2);  // 문자 z의 유니코드 값: 90		
		// 명시적 형변환을 표기하지 않아도 자동으로 형변환이 이루어져서 출력된다.   
		
	}

}
