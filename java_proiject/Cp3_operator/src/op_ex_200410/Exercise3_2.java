package op_ex_200410;

public class Exercise3_2 {

	public static void main(String[] args) {
		
		int numOfApples =123; // 사과의 개수

		int sizeOfBucket =10;

		 // 바구니의 크기(바구니에 담을 수 있는 사과의 개수)

		int numOfBucket = (numOfApples%sizeOfBucket==0) ? (numOfApples/sizeOfBucket) : (numOfApples/sizeOfBucket+1);
		// 사과를 바구니로 나누었을 때, 나머지가 0이면, 그냥 몫을 출력하고, 나머지가 0이 아니라면, 몫+1을 출력


		 // 모든 사과를담는데 필요한 바구니의 수

		System.out.println("필요한바구니의 수 :"+numOfBucket);

	}

}
