package ex_200417;

public class MethodDefAdd {
	// static이라는 키워드를 붙여주면 이 코드들이 메모리에 올라간다.
	// 그래서 메모리에 올려주기 위해서는 먼저 static을 붙여주어야한다.

	public static void main(String[] args) {
		// 인사말 출력, 나이값을 받아서 나이를 출력하는 메서드 (반환은 없음 >> void)

		System.out.println("프로그램 시작");

		// 코드의 반복
//		System.out.println("좋은 아침입니다.");
//		System.out.println("제 나이는 10세 입니다.");
//		System.out.println("좋은 아침입니다.");
//		System.out.println("제 나이는 " +age+"입니다.");

		hiEveryone(7, 110.5);
		hiEveryone(20, 170.2);
		hiEveryone(17, 180.6);
		hiEveryone(25, 200); // 200은 int ㅡ>double로 자동형변환이 되므로 문제되지 않는다.
		hiEveryone(15, 165.2);
		hiEveryone(19, 155.5);

		System.out.println("프로그램 종료");
	}
	
	//메인메서드가 아니라 따로 class안에 들어가 있어야한다.
	//컨트롤+시프트+F는 자동정렬
	static void hiEveryone(int age, double height) {

		System.out.println("안녕하세요");
		if (age < 10) {
			return; // 조건을 붙여 리턴으로 분기할 수도 있다.
		}

		System.out.println("좋은 아침입니다.");
		System.out.println("제 나이는 " + age + "세입니다.");
		System.out.println("제 키는 " + height + "cm 입니다.");
	}

}
