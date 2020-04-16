package ex;

public class AccessWayMain {
	
	public static void main(String[] args) {
	
		
		System.out.println(AccessWay.num);
		AccessWay.num++;
		System.out.println(AccessWay.num);
		// static 변수의 참조방법은 클래스이름.변수(AccessWay.num)
		
		
		AccessWay ac = new AccessWay();
		
//		System.out.println(AccessWay.num2);
		System.out.println(AccessWay.num);
		
	}
	
	
	
	

}
