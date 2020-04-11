/*[5] 아래는 변수num의 값 중에서 일의 자리를1로 바꾸는 코드이다.
 만일 변수 num의값이 333이라면 331이 되고,777이라면 771이 된다.(1)에 알맞은 코드를 넣으시오.
[실행결과]
331
*/

package op_ex_200410;

public class Exercise3_5 {

	public static void main(String[] args) {
		int num = 333;
		
//		System.out.println(  (1)  );
		System.out.println(num/10*10+1);
		// 풀이1.
		// 33.1 ㅡ> 33 (자동 int형변환) * 10 ㅡ> 330 + 1 ㅡ> 331 

		System.out.println((int)(num*0.1)*10+1);  
		// 풀이2.
		// 33.3 ㅡ> 33 (float에서 int로 형변환) * 10 ㅡ> 330 + 1 ㅡ> 331  
		System.out.println((int)((num/10+0.1)*10));  
		// 풀이3.
		// 33 + 0.1 ㅡ> 33.1 * 10 ㅡ> 331 (float에서 int로 형변환)
		
		
	}

}
