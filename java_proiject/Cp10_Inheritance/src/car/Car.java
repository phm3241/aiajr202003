package car;

public class Car {

	String color;
	int door;

	void drive() {
		System.out.println("운전");
	}

	void stop() {
		System.out.println("멈춤");

	}
}

class Fireengine extends Car {

	void water() {
		System.out.println("물뿌리기");
	}
}

class Ambulance extends Car {

	void siren() {
		System.out.println("~~~~~~~~~~");
	}

	public static void main(String[] args) {

		Car car = null;
		Fireengine fe1 = new Fireengine();
		Fireengine fe2 = null;
		Ambulance am =null;
		
		fe1.water();
//	car=(Car)fe1;  / 원래는 이렇게 써야하는데 하위에서 상위로 가는 것이므로 생략가능하다.
		car = fe1;

//	car.water();   / 사용할 수 없게 된다. 

//		fe2 = car; /오류가 나므로 명시적 형변환이 필요
		fe2 = (Fireengine)car; 
//		am=(Ambulance)car;
//		am.siren();
		
//		System.out.println(car instanceof Ambulance); 
		// car가 Ambulance로 형변환이 가능한지 확인하는 instanceof 
		
		if(car instanceof Ambulance) {
			am=(Ambulance)car;
			am.siren();
			
		}
		
		
		
		
		
		
		
		

	}
}