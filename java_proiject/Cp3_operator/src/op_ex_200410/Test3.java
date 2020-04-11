package op_ex_200410;

public class Test3 {
	
	public static void main(String[] args) {
			
        /*	연산챕터_문제3.
		    3+6, 3+6+9, 3+6+9+12 의 연산을 하는 프로그램 작성.
		        단. 덧셈 연산의 횟수 최소화 */
		
		int a = 3+6;      // 첫 번째 연산식을 변수 a에 저장
		int b = a+9;      // 공통된 연산인 변수 a활용
		int c = b+12;     // 공통된 연산인 변수 b활용
		   
		System.out.println(a);   // 9  
		System.out.println(b);   // 18
		System.out.println(c);   // 30
		
				
	}
}
