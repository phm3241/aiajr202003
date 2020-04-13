package ex;

public class IEU_sage {

	public static void main(String[] args) {

		int num = 10;
		
		// 양수 판별 : 양수일때, "양수 입니다." 
		// else 조건없이 if만 쓰는 경우.
		if (num > 0) {
			System.out.println("양수입니다.");
		}
		
		// 홀짝수 판별 : num%2==0 ㅡ> 짝수, num%2==1 ㅡ> 홀수
		if (num%2 == 0) {
			System.out.println("짝수입니다.");
		} else {
			System.out.println("홀수입니다.");
		}
		
		
		
	}

}
