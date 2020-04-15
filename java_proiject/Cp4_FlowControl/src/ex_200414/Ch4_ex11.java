package ex_200414;

public class Ch4_ex11 {

	public static void main(String[] args) {
//		[11] 피보나치(Fibonnaci) 수열(數列)은 앞을 두 수를 더해서 다음 수를 만들어 나가는수열이다. 
//		예를 들어 앞의 두 수가 1과 1이라면 그 다음 수는 2가 되고 그 다음 수는 1과 2를더해서 3이 되어서 1,1,2,3,5,8,13,21,... 과 같은 식으로 진행된다. 
//		1과 1부터 시작하는피보나치수열의 10번째 수는 무엇인지 계산하는 프로그램을 완성하시오.
//		[실행결과]
//		1,1,2,3,5,8,13,21,34,55
		
		// Fibonnaci 수열의 시작의 첫 두 숫자를 1, 1로 한다.
		int num1 = 1;
		int num2 = 1;
		int num3 = 0; // 세번째 값

		System.out.print(num1+","+num2);

		for (int i = 0 ; i < 8 ; i++ ) {

		// (1) 알맞은 코드를 넣어 완성하시오.
			num3=num1+num2;
			System.out.print(","+num3);  //println이 아니라 print이므로, 수열이 계속 한줄로 붙어서 출력된다. 
			
			// num3=num1+num2이고, 
			// num4=num2+num3이니까
			// num4를 나타내기 위해 num1에 num2를 대입해주고
			// num2에 num3을 대입해준다. 그리고 반복 이런패턴으로 반복.
			num1=num2;   
			num2=num3;		
		} 
	}
}
