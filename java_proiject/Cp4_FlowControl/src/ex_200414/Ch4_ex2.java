package ex_200414;

public class Ch4_ex2 {

	public static void main(String[] args) {
//		[2] 1부터 20까지의 정수 중에서 2 또는 3의 배수가 아닌 수의 총합을 구하시오
		 
		int sum=0;
		
		for(int num=1; num<=20; num++) {
			
			if (num%2!=0 ||num%3!=0) {
				sum = sum + num;
			}
		}
		System.out.println(sum);
	}
}
