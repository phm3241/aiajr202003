package Tv;

public class TvMain {

	public static void main(String[] args) {
		
		
		// Tv 인스턴스 생성
		Tv tv = new Tv();
		System.out.println("------------------------");
		System.out.println("Tv의 속성값 : 인스턴스 생성");
		System.out.println("Tv의 색상 : " + tv.color);
		System.out.println("Tv의 전원 : " + tv.power);
		System.out.println("Tv의 채널 : " + tv.channel);
		// 반드시 값을 가져가야하는 경우 
		// ex. 사과 구매자의 현재 돈이 0으로 초기화 되면 사과구매가 안됨. 

		tv.channel=11;    // 속성값의 직접 대입해서 변경
		System.out.println("Tv의 채널 : " + tv.channel);  
		
		tv.channelUp();   // 메서드로 속성값 변경
		System.out.println("Tv의 채널 : " + tv.channel);
		
		tv.channelChange(100);   // 메서드로 속성값 변경
		System.out.println("Tv의 채널 : " + tv.channel);
		
		tv.channelDown();   //메서드로 속성값 변경
		System.out.println("Tv의 채널 : " + tv.channel);
		
		
		
	}

}
