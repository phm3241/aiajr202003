/*[10] 다음은 대문자를 소문자로 변경하는 코드인데, 문자 ch에 저장된 문자가 대문자인 경우에만 소문자로 변경한다.
문자코드는 소문자가 대문자보다32만큼 더 크다. 예를들어 'A‘의 코드는65이고 ’a'의 코드는97이다. (1)~(2)에 알맞은 코드를 넣으시오.

[실행결과]
ch:A
ch to lowerCase:a
*/

package op_ex_200410;

public class Exercise3_10 {

	public static void main(String[] args) {

		char ch = 'A';

//		char lowerCase = ( /* (1) */ ) ? ( /* (2) */ ) : ch;
		char lowerCase = ('A' <= ch && ch <= 'Z') ? ((char)(ch+32)) : ch;
		// 삼항연산자 사용. 대문자 범위 조건 ? 조건이 참일 때, 숫자 32를 더하고 문자로 형변환하여 출력, 조건이 거짓일 때, 변수값 그대로 출력
		
		System.out.println("ch:"+ch);    
		// ch:A출력, 기존 변수 ch의 값 

		System.out.println("chto lowerCase:"+lowerCase); 
		// chto lowerCase:a출력, 대문자인 경우에 해당되어 소문자로 출력

		}

}
