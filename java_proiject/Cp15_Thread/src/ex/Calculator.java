package ex;

public class Calculator {

	// 메서드 실행 횟수 카운트
	int opCnt=0;
	
	// 메서드 단위로 동기화처리한 것. 
	// 메서드 단위로 하면 성능저하가 될 쉬 있으므로, 
	// 동기화처리할 때 아래처럼 동기화블럭을 사용하면 좋다. 
//	synchronized int add(int n1, int n2) {
//		
//		System.out.println("덧셈연산");
//		opCnt++;
//		return n1+n2;
//	}
	
	
	
	// 동기화블럭을 사용해서 처리한 것. 
	int add(int n1, int n2) {
		
		System.out.println("덧셈연산");
		synchronized(this) {opCnt++;}  	// 동기화블럭
		return n1+n2;
	}
	
	int min(int n1, int n2) {
		System.out.println("뺄셈연산"); 	// 동기화블럭
		synchronized(this) {opCnt++;}
		return n1=n2;
	}
	
	
	void showOpCnt() {
		System.out.println("연산의 횟수는 "+opCnt+"입니다ㅏ.");
	}
		
}
