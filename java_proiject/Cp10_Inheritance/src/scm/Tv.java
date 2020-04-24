package scm;

public class Tv extends Product {

	Tv(int price){    
		super(price);    // 상위클래스의 생성자 호출(반드시 해야하는 작업)
	}
	
	@Override    //알트+시프트+s 단축키
	// 상위클래스에 기본 toString이 있으므로, 상속받아서 하위클래스에서 오버라이딩 
	public String toString() {    
		return "Tv";
	}
	void display() {
		System.out.println("Tv를 시청합니다");
	}

}
