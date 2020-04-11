/*[9] 다음은 문자형 변수ch가 영문자(대문자 또는 소문자)이거나 숫자일 때만 
 변수b의 값이true가 되도록 하는 코드이다.(1)에 알맞은 코드를 넣으시오.
[실행결과]
true
*/

package op_ex_200410;

public class Exercise3_9 {

	public static void main(String[] args) {
		char ch = 'z';

//		boolean b = ( /* (1) */ );
		boolean b = ('A'<= ch && ch <= 'Z') || ('a'<= ch && ch <= 'z') || (0<= ch && ch <=9);
		// 대문자의 범위, 소문자의 범위, 숫자의 범위 작성 후 논리연산

		System.out.println(b);   // True출력, 소문자 범위에 해당


	}

}
