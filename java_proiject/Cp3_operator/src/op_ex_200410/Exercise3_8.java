/*[8] 아래 코드의 문제점을 수정해서 실행결과와 같은 결과를 얻도록 하시오.
[실행결과]
c=30
ch=C
f=1.5
l=27000000000
result=true
*/

package op_ex_200410;

public class Exercise3_8 {

	public static void main(String[] args) {

		byte a = 10;
		byte b = 20;

//		byte c = a + b;  →     
		byte c = (byte)(a + b);     
		// int+int=int 값으로 자동형변환되어 계산된 연산식을 변수 타입에 맞춰 다시 byte로 형변환. 
		// 범위가 큰 자료형에서 작은 자료형으로 변환된 경우로, 값에 오류가 있을 수 있음. 

		
		char ch = 'A';

//		ch = ch + 2;     →    
		ch = (char)(ch + 2);  
		// 연산식으로 'A'가 65로 변경되어 65+2=67로 계산되기 때문에, 계산 값을  27='C' 유니코드 문자로 형변환.  

		
//		float f = 3 / 2;    →   
		float f = 3 / 2f;
		// 접미사추가
		
		
//		long l = 3000 * 3000 * 3000;    →   
		long l = 3000 * 3000 * 3000L;  
		// 접미사추가
		
		
		float f2 = 0.1f;
		double d = 0.1;

//		boolean result = d==f2;    →   
		boolean result = (float)d==f2; 
		// float타입이 double타입으로 자동형변환 되어 소숫점이 추가로 붙기 때문에 값이 달라지게 되므로
		// double타입을 범위가 더 작은 float타입으로 형변환해주어 값이 같아지도록 한다. 



		System.out.println("c="+c);       

		System.out.println("ch="+ch);

		System.out.println("f="+f);

		System.out.println("l="+l);

		System.out.println("result="+result);
		
		

	}

}
