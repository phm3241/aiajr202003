package ex_1;

public class Test_13_precisionTest {

	public static void main(String[] args) {
		
		float f = 1.2345678901234567890f;  
		// 실수형타입 float에 맞는 접미사f 붙이기.
		// 소숫점 8자리인 1.23456789까지 반올림되어 대입된다.  
		
		double d = 1.2345678901234567890;  
		// double은 실수형의 기본타입으로 접미사 d가 생략가능.
		// 소숫점 16자리인 1.2345678901234567까지 반올림되어 대입된다.
		
		float f2 = 0.100000001f; 
		// 0.1 
		
		double d2 = 0.100000001; 
		// 접미사 생략되었음.
		// 0.100000001
		
		double d3 = 0.1000000000000001;
		// 0.1000000000000001
		
		
		System.out.println(f);
		System.out.println(d);
		System.out.println(f2);
		System.out.println(d2);
		System.out.println(d3);

	}

}
