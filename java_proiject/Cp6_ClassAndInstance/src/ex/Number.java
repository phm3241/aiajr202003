package ex;

import api.StringTest2;

public class Number {

	int num;
	
	// 생성자 =클래스이름과 같게 만들어야한다. 
//	Number(){
//		System.out.println("생성자 호출");
//		num = 1000;
//	}
//	public static void main(String[] args) {
//		
//		Number n1=new Number(); //인스턴스 생성
//		System.out.println(n1.num); //인스턴스 생성
//	}

	
	
	Number(int n){
		System.out.println("생성자 호출");
		num = n;		
	}
	
	public static void main(StringTest2[] args) {
		
		Number n1=new Number(1000000); //인스턴스 생성
		System.out.println(n1.num); //인스턴스 생성
	}
	
	
}
