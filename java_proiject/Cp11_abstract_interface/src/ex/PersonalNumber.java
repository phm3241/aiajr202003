package ex;

public interface PersonalNumber {
	
	// public abstract void addPersonalInfo(String perNum, String name);
	void addPersonalInfo(String perNum, String name);
	
	// public abstract String searchName(String perNum); 당연히 인터페이스 멤버는 추상메서드이니까 생략가능 
	String searchName(String perNum);

}
