package ex;

// class 앞에 abstract 키워드가 있는 경우, 이 클래스는 추상클래스임을 의미한다.
// 인스턴스를 만들 수 없고, 상속을 목적으로 한다. 
// 추상클래스 : 미완성된 클래스
// 클래스의 멤버중 추상 메서드를 하나라도 포함하고 있는경우 ㅡ> 추상클래스
// 추상메서드 : 미완성된 메서드
public abstract class Player {

	int currentPos;
	
	Player(){
		
	}
	
	// 추상메서드 : abstract 반환형 메서드이름(매개변수);
	abstract void play(int pos);
	
	// 추상메서드
	abstract void stop();
	
	void play() {
		play(currentPos);
	}
	
	
}
