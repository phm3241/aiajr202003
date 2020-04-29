package ex;

import java.util.Random;

public class RandomNumber {

	public static void main(String[] args) {

		
		// Math.ranom()이 아니라 Random 클래스 사용
		
		Random rand=new Random();
		// Random rand=new Random(n);   똑같은 패턴이 나온다? 특정패턴의 숫자를 n으로?
//		 Random rand=new Random(System.nanoTime());   // 가상머신의 기준시간?
//		 Random rand=new Random(System.currentTimeMillis());   // ? 
		
		
		for(int i=0; i<10; i++) {
			System.out.println(rand.nextBoolean());
			System.out.println(rand.nextInt(45)+1);   //rand.nextInt(n) : 0이상 (n미만) 난수를 출력 
			System.out.println(rand.nextDouble());
			System.out.println("----------------------");
			
		}
		
		
		
		
	}

}
