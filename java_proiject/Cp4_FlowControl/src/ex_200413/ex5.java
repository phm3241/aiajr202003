package ex_200413;

public class ex5 {

	public static void main(String[] args) {
//		문제 5. 문제 2의 답안 코드를 switch 문으로 변경하여 보자.
//		num < 0 이라면 “0 미만” 출력 부분은 if문을 사용하고 나머지 조건에 대해 변경하세요.

//		**문제2. 다음과 같이 출력이 이루어지도록 작성해보자.
//		num < 0 이라면 “0 미만” 출력
//		0 ≤ num <100 이라면 “0이상 100 미만“ 출력
//		100 ≤ num < 200 이라면 “100이상 200 미만“ 출력
//		200 ≤ num < 300 이라면 “200이상 300 미만“ 출력
//		300 ≤ num 이라면 “300이상 “ 출력
		
//		**문제2. 답안
//		int num=77;
//		
//		if (num<0) {
//			System.out.println("0 미만");
//		}else if (num<100){
//			System.out.println("0이상 100미만");
//		
//		}else if (num<200){
//			System.out.println("100이상 200미만");
//			
//		}else if (num<300){
//			System.out.println("200이상 300미만");
//		
//		}else {
//			System.out.println("300이상");
//		}
//				
		
		int num = 55;
				
		if (num<0) {
			System.out.println("0 미만");		
		}
		
		switch(num/100) {
		case 0:
			System.out.println("0이상 100미만");
			break;
		case 1:
			System.out.println("100이상 200미만");
			break;
		case 2:
			System.out.println("200이상 300미만");
			break;
		default:
			System.out.println("300이상");
		}
		
		

	}

}
