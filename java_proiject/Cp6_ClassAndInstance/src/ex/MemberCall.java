package ex;

public class MemberCall {

	// 인스턴스 변수
	int iv = 10;
	
	// 클래스변수, 스테틱변수
	static int cv = 100;
	
	int iv2=cv;
//	static int cv2=iv;  이렇게 쓰면 iv가 static이 실행되기 이전에 있기 때문에 에러. 
	static int cv2=new MemberCall().iv; 
	// 인스턴스 생성 후 iv를 만들어주거나
	// int iv2=cv
	
	static void staticMethod() {
		
		//스테틱 멤버 출력
		System.out.println(cv);
		//
//		System.out.println(iv); 이렇게 쓰면 iv가 static이 실행되기 이전에 있기 때문에 에러. 
		MemberCall mc = new MemberCall(); // 인스턴스 생성하고나서 mc.iv 로 멤버 불러온다.
		System.out.println(mc.iv); 
		
	}
	
	void instanceMethod() {
		//스테틱 멤버 출력
		System.out.println(cv);
		System.out.println(iv);

	
	}
	
	
}
