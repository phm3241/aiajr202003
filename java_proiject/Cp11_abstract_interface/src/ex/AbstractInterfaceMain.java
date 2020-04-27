package ex;

public class AbstractInterfaceMain {

	public static void main(String[] args) {
		
		// 추상클래스
		// PersonalNumberStorage storage=new PersonalNumberStorageImpl(100);  
		
		
		// 인터페이스 (인터페이스도 다형성에 적용된다)
		PersonalNumber storage=new PersonalNumberStorageImpl(100);
		
		storage.addPersonalInfo("202020-1111111","손흥민" );
		storage.addPersonalInfo("202020-1111222","박지성" );
		
		System.out.println(storage.searchName("202020-1111111"));
		System.out.println(storage.searchName("202020-1111222"));

	}

}
