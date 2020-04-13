package ex_200413;

public class ex8 {

	public static void main(String[] args) {
//		문제 8. 1000 이하의 자연수 중에서 2의 배수 이면서 7의 배수인 숫자를 출력하고,
//		그 출력된 숫자들의 합을 구하는 프로그램을 while 문을 이용해서 작성

		
		int num = 1;
		int sum = 0;
		
		
		while (0<num && num<=1000) {
			if (num%2==0 && num%7==0) {
				System.out.print(num + ", ");
				System.out.println(" ");
				sum = sum + num;
			}
			num += 1;
		}
			
		System.out.println("---------------------------------------------------------");
		System.out.println("1000이하의 자연수 중 2의 배수이면서 7의 배수인 숫자들의 합:" + sum);
	}
				
		

}


