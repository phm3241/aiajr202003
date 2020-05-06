package ex;

public class Increment {

	int num=0;
	void increment() {
		
		// 동기화 처리
		synchronized(this) {
		num++;
		}
		
	}

	int getNum() {
		return num;
	}

}
