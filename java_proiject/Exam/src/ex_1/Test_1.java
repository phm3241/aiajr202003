package ex_1;

public class Test_1 {

	public static void main(String[] args) {
		/* 
		문제 1.
		다음 두 문장을 출력하는 프로그램을 작성해 보자.
		System.out.println( “2+5=” + 2+5 );
		System.out.println( “2+5=” + (2+5) );
		*/
		
		
		System.out.println("2+5=" + 2+5);  
		// "문자열" + 2먼저 계산, 2가 문자열2로 변경되어 더해지고, 
		// 다시 5가 문자열로 더해져서 25가 된다. 
		
		System.out.println("2+5=" + (2+5)); //2+5=7
		// 괄호 안에 연산을 먼저해주고, 문자열 7로 되어 더해진다. 

		
				
		/* 
		문자열 출력의 예. + 는 문자열을 붙여준다.  
		'문자열'  + 'anyType'은 'anyType'을 문자열로 변경하고 더해준다. 
		왼쪽부터 계산한다. 
		*/
	}

}
