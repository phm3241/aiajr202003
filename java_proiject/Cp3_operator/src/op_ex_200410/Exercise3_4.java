//[4] 아래는 변수num의 값 중에서 백의 자리 이하를 버리는 코드이다.
//만일 변수 num 의 값이‘456’이라면 ‘400’이 되고,‘111’이라면 ‘100’이 된다.
//(1)에 알맞은 코드를 넣으시오.

package op_ex_200410;

public class Exercise3_4 {

	public static void main(String[] args) {
		
		int num = 456;

//		System.out.println(  (1)  );
		
		System.out.println(num/100*100);      
		// 풀이1.
		// 4.56 ㅡ> 4 (자동 int형변환) * 100 ㅡ> 400   
		
		System.out.println((int)(num*0.01)*100);      
		// 풀이2.
		// 4.56 ㅡ> 4 (float에서 int로 형변환) * 100 ㅡ> 400
		
	
		
	}

}
