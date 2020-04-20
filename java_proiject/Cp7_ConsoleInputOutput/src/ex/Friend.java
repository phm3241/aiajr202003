package ex;

public class Friend {

	String myName;
	
	Friend(String name){
		myName=name;   
	}
	
	// Object 클래스의 toString() 메서드를 재 구성한다. ㅡ> 오버라이딩, 반드시 상속되어있어야 할 수 있다. 
	// 오버라이딩 할때는 메서드의 선언부가 원본 메서드의 선언부와 동일해야한다. public String toString(){}
	public String toString() {
		return "제 이름은 " +this.myName+"입니다.";   
	}
	
	
	public static void main(String[] args) {
		
		Friend f1=new Friend("손흥민");
		Friend f2=new Friend("박지성");
		
		System.out.println(f1.toString());
		System.out.println(f1);
		System.out.println(f2.toString());
		System.out.println(f2);
		
		
	}

	// 컨트롤+시프트+s, 오버라이딩 체크? 
//	@Override    
//	public String toString() {
//		return "Friend [myName=" + myName + "]";
	
	
}
