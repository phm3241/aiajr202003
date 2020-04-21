package ex;

public class Array04 {

	public static void main(String[] args) {
		
		// 정수 45개를 저장할 수 있는 배열 생성
		int[] ball=new int[45];
		
		// 각 배열요소에 1~45 숫자를 초기화ㅡ>반복문으로
		for(int i=0; i<ball.length; i++) {
			ball[i]=i+1;
		}
//		for(int i=0; i<ball.length; i++) {  // 1~45가 잘 들어갔는지 확인. 출력.
//			System.out.println(ball[i]);
//		}
		System.out.println("--------------------------");
		
		// 배열의 요소 값의 변경을 위한 임시변수
		int temp;
		
		// 랜덤한 index값 : 1~44
		int j=0;
		
		for(int i=0; i<100; i++) {
			
			j=(int)(Math.random()*44)+1;    
			
			temp = ball[0];
			ball[0]=ball[j];
			ball[j]=temp;
			
		}

		// 랜덤하게 만들어둔 숫자 6개를 출력
		for(int i=0; i<5; i++) {
			System.out.println(ball[i]);
		}
		
		

		
		
		

	}

}
