package ex;

public class AdderThread extends Sum implements Runnable {

	int start, end;
	
	// Sum에서 상속받은 변수와 메서드
	// int num; 
	// addNum(), getNum()
	
	AdderThread(int start, int end){
		this.start=start;
		this.end=end;
	}
	
	
	@Override
	public void run() {
		
		for(int i=start; i<=end; i++) {
			addNum(i);
		}
		
	}



}
