package Tv;

public class TvMain2 {

	public static void main(String[] args) {
		
		
		// Tv 인스턴스 생성, 서로 다른 객체가 생성된다. 
		Tv tv1 = new Tv(); 
		Tv tv2 = new Tv();
		
		System.out.println(tv1==tv2);  //주소값 비교, 서로 다른 객체인지 확인하는 작업
		
		System.out.println("------------------------");
		System.out.println("tv1의 channel : " + tv1.channel);
		System.out.println("tv2의 channel : " + tv2.channel);
		
		System.out.println("------------------------");
		
		tv1.channel=10;
		System.out.println("tv1의 channel을 10으로 변경");
		
		System.out.println("tv1의 channel : " + tv1.channel);
		System.out.println("tv2의 channel : " + tv2.channel);
		// 서로 다른 객체인지 확인가능하다. 
		
		
	}

}
