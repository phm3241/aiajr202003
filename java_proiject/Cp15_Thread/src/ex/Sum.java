package ex;

public class Sum {

	// 변수
	long num;  
	
	// 생성자
	Sum(){
		num=0;   // 합의 결과를 가지는 변수 초기화
	}
	
	// 메서드1 : 합을 구하는 기능
	void addNum(long n) {
		num+=n;		// num=num+n;
	}
	
	// 메서드2 : 현재가지고 있는 값을 반환
	long getNum() {
		return num;
	}
	
}
