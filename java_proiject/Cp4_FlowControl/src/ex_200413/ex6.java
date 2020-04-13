package ex_200413;

public class ex6 {

	public static void main(String[] args) {
//		문제 6. while 문을 이용해서 1부터 99까지의 합을 구하는 프로그램을 작성
		
		int num = 1;
		int sum = 0;
		
		while (num<100) {
			sum = sum + num;
			num++;
		}
		
		System.out.println(sum);
		
		
	}

}
