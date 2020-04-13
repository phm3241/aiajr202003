package ex_200413;

public class ex10 {

	public static void main(String[] args) {
//		문제 10. for 문을 이용하여 구구단 중 5단을 출력하는 프로그램 작성
		
		
		for(int i=2; i<6; i++) {
			System.out.println(i+"단");
			for(int j=1; j<10; j++)
				System.out.println(i+"*"+j+"= "+i*j);
				System.out.println("-----------");
		}
	}
}
