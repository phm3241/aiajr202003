package Tv;

public class Tv {
	
	// Tv의 속성(변수) ㅡ> 멤버 변수, 인스턴스 변수
	String color;     // Tv의 색상 값 (초기화 해 두지 않음) 
	boolean power;    // Tv의 전원 상태 (초기화 해 두지 않음)
	int channel;      // Tv의 채널 값 (초기화 해 두지 않음)
	
	// Tv의 기능(메서드) ㅡ>클래스의 멤버	
	// Tv의 전원을 켜고/끄는 기능, 값을 반환하는 게 아닌 상태값만 변경되는 메서드
	void power() {
//		if(power==true) {
//			power = false;
//		}else {
//			power = true;
//		}
//		//위의 조건식처럼 쓰지 않고, 아래의 부정문으로 한줄로 줄일 수 있다. 
		power = !power;
	}
	
	// 채널을 올리는 기능, 내부에 있는 변수 값을 변경시키는 것. 입력받는 값 없으므로 매개변수 받을 필요 없다. 
	void channelUp() {
//		channel= channel+1;
//		channel += 1;
//		channel++;
		++channel;
	}
	
	// 채널을 내리는 기능, 내부에 있는 변수 값을 변경시키는 것. 입력받는 값 없으므로 매개변수 받을 필요 없다. 
	void channelDown() {
		channel--;
	}
	
	// 채널 값을 변경하는 : 채널 값을 받아서 변경 ㅡ> 매개변수 정의 필요. 반환할 필요없이 값을 변경하므로 void
	void channelChange(int ch) {
		channel = ch;
	}
	
	
	
	
	
	

}
