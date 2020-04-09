package ex_1;

public class Test_14_castingEX1 {

	public static void main(String[] args) {
		
		double d = 100.0;   // 실수형 타입이라 소숫점까지 표시됨.
		
		int i = 100;        // 정수형 타입
		
		int result = i + (int)d;   
		// 연산을 위해 실수타입 변수 d를 정수타입으로 변환한다.
		// 변환하면 100.0 >> 100 으로 소숫점은 버림이 되고 정수로 변경된다.
		// 100 + 100 = 200
		
		
		System.out.println("d=" + d);
		System.out.println("i=" + i);
		System.out.println("result=" + result);

	}

}
