package ex;

public class CalMinThread extends Thread {

	Calculator cal;
	
	public CalMinThread(Calculator c){
		cal=c;
		
	}

		
	// 쓰레드를 실행할 run 메서드를 오버라이드한다. 
	@Override
	public void run() {
		System.out.println(cal.min(2, 1));
		System.out.println(cal.min(4, 2));
		try {
			sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	
	}
	
}
