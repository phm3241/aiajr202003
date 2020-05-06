package ex;

public class ThreadMain6 {

	public static void main(String[] args) {
		
		Increment inc=new Increment();
		
		IncThread it1=new IncThread(inc);
		IncThread it2=new IncThread(inc);
		IncThread it3=new IncThread(inc);
		
		it1.start();
		it2.start();
		it3.start();

		
		// 당연히 값이 잘못나올거라는 것을 예측할 수 있다. 
		// 참조되는 시점 때문에 문제! 
		// 따라서 join()으로 참조되는 시점의 우선순위를 둔다. 
		// 하지만, join만으로는 완전히 동기화를 막지 못하므로 (값이 계속 잘못출력됨)
		// Increment 클래스의 메서드에 synchronized(this)로 동기화처리해주면 제대로된 결과가 출력된다. 
		try {
			it1.join();
			it2.join();
			it3.join();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		System.out.println(inc.getNum());
		
		
	}
}