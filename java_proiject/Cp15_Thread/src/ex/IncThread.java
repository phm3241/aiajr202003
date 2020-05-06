package ex;

public class IncThread extends Thread {
	
	Increment inc;
	
	IncThread(Increment inc){
		this.inc=inc;
		
	}

	
	// 쓰레드를 구현할때 메서드 run사용! 오버라이드해서
	@Override
	public void run() {
		for(int i=0; i<10000; i++) {
			for(int j=0; j<10000; j++) {
				inc.increment();
			}
		}
		
	}

}
