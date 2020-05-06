package ex;

public class ThreadMain2 {

	public static void main(String[] args) {

		// Runnable을 구현하는 인스턴스 생성
		AdderThread at1=new AdderThread(1,50);
		AdderThread at2=new AdderThread(51,100);
		
		// 쓰레드 인스턴스 생성
		Thread t1=new Thread(at1);
		Thread t2=new Thread(at2);
		
		// 실행의 흐름 생성
		t1.start();   // run() 메서드 호출해서 프로그램 실행
		t2.start();   
		
		
		// join은 해당 쓰레드가 종료할 때까지 진행해주는 메서드?
		try {

			// t1.join(3000);// 3초동안 t1만 쓰는 것.
			t1.join();   // t1의 실행이 끝날 때까지 t2 와 main 쓰레드가 멈춰있다(대기) 
			t2.join();   // t2의 실행이 끝날 때까지 main쓰레드가 대기
		
		} catch (InterruptedException e) {
			e.printStackTrace();
		}  
		
		
		System.out.println("1~100까지의 합: " +(at1.getNum())+(at2.getNum()));
	}
	

}
