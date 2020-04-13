package ex;

public class While_Break {

	public static void main(String[] args) {
		
		int i=0;
		int sum=0;
		
		// 무한 반복
		while (true) {   
			if(sum>100) {
				break;   // 위치 중요, 감싸고 있는 반복문을 벗어나게 한다. 
			} 
			// System.out.println(0);
			i++;
			sum += i;
					
		}
		
		System.out.println("마지막 값: " + i);
		System.out.println("합이 100이 넘어간 값 : " + sum);

	}

}
