package ex;

public class Do_While_Basic {

	public static void main(String[] args) {
		
		int num = 6; // 반복의 조건을 체크하는 변수
		
		do {
			System.out.println("I like JAVA " + num);   // 조건식이 안맞더라도 반드시 한번은 출력됨. 
			num++;   
			
		} while(num<6);
		
		
	}

}
