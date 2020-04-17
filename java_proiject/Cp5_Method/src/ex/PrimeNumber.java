//	문제4.
//	전달되는 값이 소수(prime number)인지 아닌지를 판단하여, 소수인경우 true를, 소수가 아닌 경우 false를 반환하는 메서드를 정의하고, 
//	이를 이용해서 1이상 100 이하의 소수를 전부 출력할 수 있도록 main 메서드를 정의하자.


package ex;

public class PrimeNumber {

	// 전달되는 값이 소수(prime number)인지 아닌지를 판단하여, 
	// 소수인경우 true를, 소수가 아닌 경우 false를 반환하는 메서드

//	private boolean checkNum=true;  //checkNum 변수선언, true로 초기화

	public boolean checkNum(int n) {
		if
		((n%2 != 0 && n%3 != 0 && n%5 != 0)
		&& (n==1 || n==2 || n==3 || n==5))
			System.out.println(n);
			return true;
		}


public static void main (String[] args) {
	// 1이상 100 이하의 소수를 전부 출력할 수 있도록 main 메서드
	
	PrimeNumber pn = new PrimeNumber();
	System.out.print("1이상 100이하의 소수 : ");

	for(int i=1; i<=100; i++) {
		pn.checkNum(i);
		if (pn.checkNum(i)==true) {
			System.out.print(i+", ");
		}
	}
	
	
	
	
	
}
}