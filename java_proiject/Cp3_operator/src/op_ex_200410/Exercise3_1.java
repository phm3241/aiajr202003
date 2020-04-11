//[1] 다음 연산의 결과를 적으시오.

package op_ex_200410;

public class Exercise3_1 {

	public static void main(String[] args) {
		int x = 2;

		int y = 5;

		char c = 'A'; // 'A'의문자코드는 65

		System.out.println(y+= 10 - x++);     // 13출력. 5+10-2, 출력이후에 증감연산실행

		System.out.println(x+=2);             // 5출력. 3+2, 위 연산식에서 증감연산된 3에 +2

		System.out.println(!('A' <= c && c <='Z') );  
		// false  
		// !(65<=65(true) and 65<=90(true)) 비교, 논리, 부정연산
		// 괄호 안 비교는 true 그리고 true로 ㅡ> true가 나오지만, 앞에 부정이 있어,
		// 최종 결과는 반대로 false 출력 
		

		System.out.println('C'-c);            // 2출력, 67-65

		System.out.println('5'-'0');           // 5출력, 53-48

		System.out.println(c+1);              // 66출력, 65+1

		System.out.println(++c);              // B, 65+1 증감연산 후 66 유니코드 B 출력

		System.out.println(c++);              // B, 출력먼저하고 증감연산

		System.out.println(c);                // C, 위 증감연산으로 67 유니코드 C출력 

	}

}
