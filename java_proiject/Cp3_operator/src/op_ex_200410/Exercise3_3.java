//[3] 아래는 변수num의 값에 따라 ‘양수’,‘음수’,‘0’을 출력하는 코드이다.삼항 연산자를 이용해서(1)에 알맞은 코드를 넣으시오.
//[Hint] 삼항 연산자를 두 번 사용하라.
//3항 연산자 : 다음에 풀어도 됩니다.

package op_ex_200410;

public class Exercise3_3 {

	public static void main(String[] args) {
		
		int num = 10;

//		System.out.println( /* (1) */ );

		System.out.println( num==0 ? "0":(num>0 ? "양수":"음수"));
		// 삼항연산자 사용. 조건은 num=0이다. 참이면 0 출력, 
		// 참이 아니라면 다시 삼항연산자로 조건설정하고 양수 또는 음수 출력 
		
		
	}

}
