package ex;

public class TwoNum {

	int num1=0;
	int num2=0;
	int num3=0;
	
	// 메서드 앞에다가 모두 synchronized 붙여주면, 
	// 메서드 하나가 다 처리될 때까지 다른 메서드는 모두 대기상태이므로, 성능저하가 될 수있기 떄문에
	// 동기화 블럭을 사용해서 동기화 처리를 해준다. 
	
	
	void addOneNum1() {
		synchronized(this) {    
		// 동기화블럭, this는 자기자신을 가리키는 참조변수로 이미 있기 떄문에
		// this외에 다른 참조변수 쓰려면 맨아래처럼 만들어줘야한다. 
		num1+=1;
		}
	}
	
	void addTwoNum1() {
		synchronized(this) {
		num1+=2;
		}
	}
	
	void addOneNum2() {
		synchronized(key1) {
		num2+=1;
		}
		
	}
	
	void addTwoNum2() {
		synchronized(key1) {
		num2+=2;
		}
	}
	
	// 참조값을 사용하는 것이므로, 두가지 방법으로 참조변수를 만들 수 있다. 
	Object key1=new Object();   // 일반적으로 
	String key2="key2";
	
	
	void showNums() {
		System.out.println("num1 : "+num1);
		System.out.println("num2 : "+num2);
	}
	
	
	
} //class end
