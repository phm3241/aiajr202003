//[2] 아래의 코드는 사과를 담는데 필요한 바구니(버켓)의 수를 구하는 코드이다.
//만일 사과의수가 123개이고 하나의 바구니에는10개의 사과를 담을 수 있다면,13개의 바구니가 필요할 것이다.
//(1)에 알맞은 코드를 넣으시오.
//3항 연산자 : 다음에 풀어도 됩니다.

package op_ex_200410;

public class Exercise3_2 {

	public static void main(String[] args) {
		
		int numOfApples = 123;     // 사과의 개수

		int sizeOfBucket = 10; 	   // 바구니의 크기(바구니에 담을 수 있는 사과의 개수)
		
//		int numOfBucket = ( (1) );  모든 사과를담는데 필요한 바구니의 수 연산식

		int numOfBucket = (numOfApples%sizeOfBucket==0) ? (numOfApples/sizeOfBucket) : (numOfApples/sizeOfBucket+1);
		// 삼항연사자 사용. 조건? 조건이 참일 때 실행 : 조건이 거짓일 때 실행
		// 사과를 바구니로 나누었을 때, 나머지가 0이면, 그냥 몫을 출력하고, 나머지가 0이 아니라면, 몫+1을 출력

		System.out.println("필요한바구니의 수 :"+numOfBucket);  // 조건이 참이 아니므로 몫12+1하여 결과 13출력

	}

}
