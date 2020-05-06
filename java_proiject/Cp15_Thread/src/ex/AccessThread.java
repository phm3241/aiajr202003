package ex;

public class AccessThread extends Thread {

	TwoNum twoNum;
	
	public AccessThread(TwoNum twoNum) {
		this.twoNum=twoNum;
		
	}

	// 쓰레드니까 실행하기 위한 run 메서드 오버라이드하기.
	@Override
	public void run() {
		twoNum.addOneNum1();
		twoNum.addTwoNum1();
		twoNum.addOneNum2();
		twoNum.addTwoNum2();
		
	}
	
	
	
	
}
