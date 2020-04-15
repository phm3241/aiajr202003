package ex_200414;

public class Ch4_ex6 {

	public static void main(String[] args) {
//		[6] 두 개의 주사위를 던졌을 때, 눈의 합이 6이 되는 모든 경우의 수를 출력하는 프로그램을작성하시오.
		
		for(int dice1=1; dice1<7; dice1++) {
			for(int dice2=1; dice2<7; dice2++) {
				if(dice1+dice2==6) {
					System.out.println("dice1+dice2= " +dice1+"+"+dice2+"=6");
				}
			}
		}
	}
}
