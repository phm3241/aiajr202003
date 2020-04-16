//	문제3
//	원의 반지름 정보를 전달하면, 원의 넓이를 계산해서 반환하는 메서드와 원의 둘레를 계산해서 반환하는 메서드를 각각 정의하고, 
//	이를 호출하는 main메서드를 정의하자. (2*π*r), (π*r∧2)

package ex;

public class CircleCalc {
	
	//원의 반지름 정보를 받아 원의 넓이를 계산해서 반환하는 메서드
	double cirArea(double r) {
		final double PI = 3.14;
		double result=2*r*PI;

		return result;
	}
	
	//원의 반지름 정보를 받아 원의 둘레를 계산해서 반환하는 메서드
	double cirRound(double r) {
		final double PI = 3.14;
		double result=r*r*PI;
		
		return result;
	}
}
