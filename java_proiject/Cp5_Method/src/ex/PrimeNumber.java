//	문제4.
//	전달되는 값이 소수(prime number)인지 아닌지를 판단하여, 소수인경우 true를, 소수가 아닌 경우 false를 반환하는 메서드를 정의하고, 
//	이를 이용해서 1이상 100 이하의 소수를 전부 출력할 수 있도록 main 메서드를 정의하자.


package ex;

public class PrimeNumber {

	// 전달되는 값이 소수(prime number)인지 아닌지를 판단하여, 
	// 소수인경우 true를, 소수가 아닌 경우 false를 반환하는 메서드

	
	// 결과가 참거짓인 논리형 타입 boolean 사용. 숫자 1개받는 매개변수로 소수 판단
	public boolean checkNum(int n) {         
		if
		((n%2 != 0 && n%3 != 0 && n%5 != 0)  // 소수조건 
		|| (n==1 || n==2 || n==3 || n==5))   // 소수조건
			return true;	    
		else 
			return false;
		}


public static void main (String[] args) {
	// 1이상 100 이하의 소수를 전부 출력할 수 있도록 main 메서드
	
	PrimeNumber pn = new PrimeNumber();        // 소수판단 메서드 ㅡ> 객체생성
	System.out.println("1이상 100이하의 소수 : ");    

	for(int i=1; i<=100; i++) {                // 반복문으로 1~100 숫자중 소수 판단. 출력 
		pn.checkNum(i);                        // 참조변수 pn으로 소수판단 메서드 기능 사용 
		if (pn.checkNum(i)==true) {            // 조건문으로 소수판단 결과가 true로 반환되면 출력
			System.out.print(i+", ");
		}
	}
	
	
	
	
	
}
}