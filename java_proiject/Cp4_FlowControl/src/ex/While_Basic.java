package ex;

public class While_Basic {

	public static void main(String[] args) {
		
		int num = 0; // 반복의 조건을 체크하는 변수

		while (num<5) {
			System.out.println("I like JAVA " + num);
			num++; // ★★★ 이 탈출조건을 쓰지 않으면, num이 계속 0으로 조건식이 참이므로, 무한반복이 된다. 
		}
		
		
		
	}

}
