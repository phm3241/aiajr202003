package card;

public class card {
	
	// 속성 4개를 모두 묶어서 클래스로 만들고, 인스턴스로 했을때
//	int width=100;
//	int height=250;
//	
//	String kind;
//	int number;
	
	
	// 
	static int width=100;
	static int height=250;
	
	String kind;
	int number;
	
	
	// 생성자를 만드는 방법. 이름은 클래스 이름과 같게 해야한다. 
	card(){    //생성자 생성.매개변수 없이 생성자 생성하여 초기화하는 방법.
				
	}
	
	
	card(String type, int num){   //생성자 생성. 매개변수 있는 생성자 생성하여 초기화하는 방법.
		kind=type;
		number=num;
	}  
	// 생성자가 하나도 없을 때는, 자동으로 디폴트 생성자를 생성해주었는데, 
	// 하나 이상의 생성자가 존재할 떄는 디폴트 생성자가 자동으로 생성되지 않기 때문에
	// 반드시 디폴트 생산자를 생성해주어야 한다. 
	
	
	// 메서드의 이름은 같은이름으로 했을 떄 허용하는 경우,
	// void add(int n)
	// void ass(int n1, int n2)
	// add로 호출할때 일단 add로 가서 매개변수갯수와 맞는 것으로 처리한다. 
	// 타입이나, 매개변수 갯수가 다르면 된다. 
	// 생성자는 메서드와 유사하기 때문에 이런식으로 매개변수를 통해 같은이름으로도 만들수있다. 
	
	
	
}
