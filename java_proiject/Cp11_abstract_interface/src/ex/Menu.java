package ex;

public interface Menu {
	
	// interface는 반드시.  
	// public static final 자료형 상수변수
	// public abstract 메서드이름(매개변수)
	
	// public static final 반드시 이게 붙어야하는데, 생략가능. 
	int INSERT=1;     //public static final int INSERT=1;
	
	// public abstract이 생략되어 있다. 
	void select();   // public abstract void select(); 와 같다.
	

}
