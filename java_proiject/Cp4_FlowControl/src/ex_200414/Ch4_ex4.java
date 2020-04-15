package ex_200414;

public class Ch4_ex4 {

	public static void main(String[] args) {
//		[4] 1+(-2)+3+(-4)+... 과 같은 식으로 계속 더해나갔을 때, 몇까지 더해야 총합이 100이상이되는지 구하시오.

		int num=1;
		int sum=0;
		
		while (true) {
			if (num%2==0) 
				sum -= num;
			else 
				sum += num;			
			
			if (sum>=100)
				break;

			num++;
		}
		System.out.println("총 합이 100이상이 될때 num: "+num);
		System.out.println("총 합이 100이상이 될때 sum: " +sum);
	}
}
