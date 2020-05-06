package ex;

public class CalAddThread extends Thread {

	Calculator cal;
	
	public CalAddThread(Calculator c){
		cal=c;
		
	}

	
	// 쓰레드를 실행할 run 메서드를 오버라이드한다. 
	@Override
	public void run() {
		System.out.println(cal.add(1, 2));
		System.out.println(cal.add(2, 4));
		try {
			sleep(2000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	
	
	}
	
}
