package ex;

public class ThreadMain5 {

	public static void main(String[] args) {
		
		// 인스턴스 생성
		Sum sum=new Sum();
		
		// 참조변수 하나를 동시에 참조할 수있다.
		AddThread at1=new AddThread(sum, 1, 50000);
		AddThread at2=new AddThread(sum, 50001, 100000);
		
		at1.start();
		at2.start();
		
		try {
			at1.join();
			at2.join();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		System.out.println("1~100까지의 합 : " +sum.getNum());
	}

}
