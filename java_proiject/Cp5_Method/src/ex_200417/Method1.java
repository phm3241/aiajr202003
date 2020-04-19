package ex_200417;

public class Method1 {

	public static void main(String[] args) {
		// 메서드의 위치는 class 블록에 위치하고 정의
		// void 는 리턴을 하지 않아도 된다. 
		// 메서드를 사용하기 위해서는 인스턴스(객체)를 생성한 후 사용가능하다. 
		// 메서드 코드를 메모리에 로드한다.
		
		// 인스턴스 생성(객체생성)
		// 객체를 만드는 키워드 new
		
		MyMath math = new MyMath();
		long result = math.add(10, 100);
		
		System.out.println(result);
		System.out.println(math.add(10000000000L, 200000000));
		
		
		
		
	// 가장 기본적인 메서드구조
//	int add() {
//		return 10;
	}
		
		

}
