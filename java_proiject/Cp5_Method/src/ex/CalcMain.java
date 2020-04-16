//	문제1
//	두 개의 정수를 전달받아서, 두수의 사칙연산 결과를 출력하는 메서드와 이 메서드를 호출하는 main메서드를 정의해보자.
//	단, 나눗셈은 몫과 나머지를 각각 출력해야 한다.

//	문제2.
//	두 개의 정수를 전달 받아서, 두수의 절대값을 계산하여 출력하는 메서드와 이 메서드를 호출하는 main메서드를 정의해 보자. 
//	단 메서드 호출 시 전달되는 값의 순서에 상관없이 절대값이 계산되어서 출력되어야 한다.

package ex;

public class CalcMain {
	
	// 메서드를 호출하는 main메서드
	public static void main(String[] args) {
		
		// 사칙연산 메서드 호출
		Calc c1=new Calc();
		
		c1.add(10, 20);
		c1.sub(10,20);
		c1.mul(10,20);
		c1.div(100,5);
		
		// 절대값 메서드 호출
		CalcAbs c2=new CalcAbs();
		
		c2.abs(-5, 10);
		
		// 원넓이 메서드 호출
		CircleCalc c3=new CircleCalc();
		System.out.println("원의 넓이: "+c3.cirArea(4));

		// 원둘레 메서드 호출
		CircleCalc c4=new CircleCalc();
		System.out.println("원의 둘레: "+c4.cirRound(4));
	
	
	
	}	
}
