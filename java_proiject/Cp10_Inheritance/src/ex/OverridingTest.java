package ex;

public class OverridingTest {

	public static void main(String[] args) {
		
		
		// 다형성 : 상위클래스 타입의 참조변수에 하위클래스의 인스턴스를 참조
		// 상위클래스 아래 하위클래스(상위클래스를 상속받아 새로 만들어지는 )들은 각 타입이 다른 여러개일 수 있다. 
		// 따라서 타입이 서로 다른 인스턴스들을 하나로 묶을 수 있는 것이 공통적으로 상속받은 상위클래스라는 것.
		// 상위클래스는 하나의 타입이기 때문에 타입이 서로다른 여러 인스턴스들을 하나의 타입으로 관리한다는 의미이다. (배열로)
		
		Speaker sp=new BaseEnSpeaker();
		// 참조변수 sp는 BaseEnSpeaker 인스턴스의 멤버 중 Speaker가 가지던 멤버만 사용한다.
		
		sp.showCurrentState();
//		sp.setBaseRate(100); // BaseEnSpeaker에서 Speaker에서 가지고 있지 않은 멤버를 가져오려고 하면 오류가 난다.
		
		
		BaseEnSpeaker bSpeaker=new BaseEnSpeaker();
		bSpeaker.setVolume(10);
		bSpeaker.setBaseRate(20);

		bSpeaker.showCurrentState();
	
		
		System.out.println(bSpeaker); // toString()하는 것과 같다
	}
}
