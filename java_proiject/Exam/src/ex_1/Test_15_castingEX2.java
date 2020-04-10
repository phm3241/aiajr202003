package ex_1;

public class Test_15_castingEX2 {

	public static void main(String[] args) {
		
		byte b = 10;      
		// 10이 정수타입 변수 b에 대입
		
		int i = (int)b;   
		// byte타입을 int타입으로 형변환. int가 더 큰 범위라 가능.
		
		
		System.out.println("i=" + i);   // i=10 (형변환에 이상없이 출력된다)
		System.out.println("b=" + b);   // b=10 
		
		
		int i2 = 300;
		// 300이 정수타입 변수 i2에 대입
		
		byte b2 = (byte)i2;
		// int타입을 byte타입으로 형변환. 
		// int타입보다 byte이 더 작은 범위라 값에 외곡이 생김.
		
		
		
		System.out.println("i2=" + i2);  // i2=300
		System.out.println("b2=" + b2);  // b2=외곡된 값

		// 형변환으로 값의 외곡으로 b2는 300이 다른값이 나온다. 

	}

}
