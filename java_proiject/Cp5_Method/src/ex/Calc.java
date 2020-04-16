package ex;

public class Calc {
	// 두 수의 사칙연산 결과를 출력하는 메서드들 

	// 더하기 메서드 
	public void add(long n1, long n2) {
		System.out.println("두 수의 합: "+n1+"+"+n2+"="+(n1+n2));
	}
		
	// 빼기 메서드 
	public void sub(long n1, long n2) {
		System.out.println("두 수의 차:"+n1+"-"+n2+"="+(n1-n2));
	}
	
	// 곱하기 메서드 
	public void mul(long n1, long n2) {
		System.out.println("두 수의 곱:"+n1+"*"+n2+"="+(n1*n2));
	}

	// 더하기 메서드 
	public void div(long n1, long n2) {
		System.out.println("두 수의 나누기 몫:"+n1+"/"+n2+"="+(n1/n2));
		System.out.println("두 수의 나누기 나머지:"+n1+"%"+n2+"="+(n1%n2));
	}
}
