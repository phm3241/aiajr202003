package ex;

public class AddThread extends Thread {
	
	Sum sumInst;
	long start;
	long end;
	
	AddThread(Sum sum, long s, long e){
		sumInst=sum;
		start=s;
		end=e;
	}
	
	// 오버라이드
	public void run() {
		for(long i=start; i<end; i++) {
			sumInst.addNum(i);
		}
		
	}
	

}
