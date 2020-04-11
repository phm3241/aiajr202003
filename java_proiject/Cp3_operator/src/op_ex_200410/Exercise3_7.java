/*[7] 아래는 화씨(Fahrenheit)를 섭씨(Celcius)로 변환하는 코드이다.
 변환공식이 'C =5/9 ×(F - 32)'라고 할 때,(1)에 알맞은 코드를 넣으시오.
 단, 변환 결과값은 소수점셋째 자리에서 반올림해야 한다.
(Math.round()를 사용하지 않고 처리할 것)

[실행결과]
ch:A
ch to lowerCase:a
Fahrenheit:100
Celcius:37.78
*/

package op_ex_200410;

public class Exercise3_7 {

	public static void main(String[] args) {
		
		int fahrenheit = 100;
		
//		float celcius = ( /* (1) */ );
		float celcius = (int)(5/9f*(fahrenheit-32)*1000)%10 > 5 ? ((int)(5/9f*(fahrenheit-32)*100)/100.0f+0.01f):((int)(5/9f*(fahrenheit-32)*100)/100.0f);
		// 삼항연산자 사용
		// 조건 37.77778 ㅡ> 37777.78 ㅡ> 37777 (float에서 int로 형변환) ㅡ> 10으로 나눈 나머지가 5이상일때, 
		// 조건이 참이면, 37.77778 ㅡ> 3777.778 ㅡ> 3777 (float에서 int로 형변환) ㅡ> 37.77 + 0.01 ㅡ> 37.78 출력
		// 조건이 거짓이면, 37.77778 ㅡ> 3777.778 ㅡ> 3777 (float에서 int로 형변환) ㅡ> 37.77 출력 
		
		
		System.out.println("Fahrenheit:"+fahrenheit);
		System.out.println("Celcius:"+celcius);



	}


	}


