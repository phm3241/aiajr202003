/*[6] 아래는 변수num의 값보다 크면서도 가장 가까운10의 배수에서 변수num의 값을뺀 나머지를 구하는 코드이다.
예를 들어, 24의 크면서도 가장 가까운10의 배수는 30이다. 19의 경우 20이고,81의 경우 90이 된다.
30에서 24를 뺀 나머지는6이기 때문에 변수num의 값이 24라면 6을결과로 얻어야 한다. (1)에 알맞은 코드를 넣으시오.
[Hint] 나머지 연산자를 사용하라.
[실행결과]
6
*/

package op_ex_200410;

public class Exercise3_6 {

	public static void main(String[] args) {
		
		int num = 24;
		
//		System.out.println(  (1)  );
		System.out.println(10-(num%10));
		// 풀이1. 
		// 10에서 num을 10으로 나눈 나머지를 뺴는 패턴
		
		System.out.println(((num/10+1)*10)%num);
		// 풀이2.
		// num의 가장 가까운 10의 배수는 앞자리 숫자가 무조건 num의 앞자리 숫자 보다 1크다. 
		// 2.4 + 1 ㅡ> 3 (자동 int형변환) * 10 ㅡ> 30 % 24 ㅡ> 6   
		
        System.out.println((int)(num*0.1+1)*10%num);  
		// 풀이3.
        // 2.4 + 0.1 ㅡ> 3.4 (float에서 int로 형변환) * 10 ㅡ> 30 % 24 ㅡ> 6 

		
	}

}
