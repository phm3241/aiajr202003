package ex;

public class ThreadMain1 {

	public static void main(String[] args) {

		// 쓰레드 인스턴스 생성
		ShowThread st1=new ShowThread("멋진쓰레드");
		ShowThread st2=new ShowThread("예쁜쓰레드");
		
		// 쓰레드의 우선순위 지정 : 지정해주지 않으면 기본적으로 5가 된다. 
		// st1.setPriority(10);   // 우선순위를 높여도, 빈도수가 앞쪽에 많아질 뿐이다. 
		st1.setPriority(Thread.MAX_PRIORITY);   // 최대값10. 상수로 되어있어서 상수를 사용할 수도 있다.
		st2.setPriority(Thread.MIN_PRIORITY);   // 최소값1. 상수로 되어있어서 상수를 사용할 수도 있다.
		
		// 쓰레드의 실행: 새로운 프로그램 코드 생행의 흐름
		st1.start();
		st2.start();
		
		
		// 메인쓰레드 실행흐름 출력. 
		for(int i=0; i<100; i++) {
			System.out.println("메인쓰레드가 실행중입니다.");
		}
	}

}
