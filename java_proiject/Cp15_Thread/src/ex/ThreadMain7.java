package ex;

public class ThreadMain7 {

	public static void main(String[] args) {
		
		Calculator cal=new Calculator();
		
		CalAddThread cat=new CalAddThread(cal);
		CalMinThread cmt=new CalMinThread(cal);
		
		cat.start();
		cmt.start();
		
		// 실행시점에 대한 우선순위를 join 메서드로 
		try {
			cat.join();
			cmt.join();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		
		
		
	}
}