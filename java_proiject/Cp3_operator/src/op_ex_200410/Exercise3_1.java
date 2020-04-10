package op_ex_200410;

public class Exercise3_1 {

	public static void main(String[] args) {
		int x = 2;

		int y = 5;

		char c = 'A'; // 'A'의문자코드는 65

		System.out.println(y+= 10 - x++);     // 5+10-2 = 13

		System.out.println(x+=2);             // 3+2 = 5

		System.out.println(!('A' <= c && c <='Z') );  
		// false  
		// !(65<=65(true) and 65<=90(true)) 

		System.out.println('C'-c);            // 67-65 = 2

		System.out.println('5'-'0');           // 53-48 = 5

		System.out.println(c+1);              // 65+1 = 66

		System.out.println(++c);              // B

		System.out.println(c++);              // B

		System.out.println(c);                // C

	}

}
