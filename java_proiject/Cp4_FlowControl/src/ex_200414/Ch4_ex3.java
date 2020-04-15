package ex_200414;

public class Ch4_ex3 {

	public static void main(String[] args) {
//		[3] 1+(1+2)+(1+2+3)+(1+2+3+4)+...+(1+2+3+...+10)의 결과를 계산하시오.

		int sum=0;
		for (int num=1; num<11; num++) {
			for(int num2=1; num2<=num; num2++) {
				sum=sum+num2;
			}
		}
		System.out.println(sum);
	}
}
