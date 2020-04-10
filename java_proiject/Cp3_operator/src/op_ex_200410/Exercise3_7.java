package op_ex_200410;

public class Exercise3_7 {

	public static void main(String[] args) {
		
		int fahrenheit =100;

		float celcius = 5/9f*(fahrenheit-32.0f);

		System.out.println("Fahrenheit:"+fahrenheit);

		System.out.println("Celcius:"+celcius);


		
		char ch = 'z';

		boolean b = (ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z') || (ch >='0' && ch <='9');

		System.out.println(b);

	}

//		[실행결과]
//
//		ch:A
//
//		ch to lowerCase:a

//		Fahrenheit:100
//		Celcius:37.78
	}


