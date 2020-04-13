package ex_200413;

public class ex16 {

	public static void main(String[] args) {
//		문제16. 1 부터 99까지의 합을 구하는 프로그램 작성
//		while문, for문, do while 문을 각각 사용

		
		//while문
		int num=1;
		int sum=0;
		
		while(num<100) {
			sum = sum+num;
			num++;
		}
		System.out.println(sum);
		
		
		//for문
		sum=0;
		
		for(int num2=1; num2<100; num2++) {
			sum = sum+num2;
		}
		System.out.println(sum);
		
		
		//do while문
		int num3=1;
		sum=0;
		
		do {
		    sum = sum+num3;
			num3++;
			
		}while(num3<100);
		System.out.println(sum);
	}
}
