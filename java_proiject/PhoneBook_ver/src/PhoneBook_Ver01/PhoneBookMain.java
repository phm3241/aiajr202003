package PhoneBook_Ver01;

public class PhoneBookMain {

	public static void main(String[] args) {
		
		PhoneInfor info=new PhoneInfor("박지민", "000-0000-0000", "2000.01.01");
		info.showInfo();
		
//		info.name="박지성";  
//		info.showInfo();
		// 이렇게 하면 데이터의 내용이 바뀌게 되므로, phonInfor 클래스에 변수 앞에 private을 붙여준다. 
		
		// 이제 info가 "박지민"을 가르키게 됨 
		// ㅡ> 이전에 info가 가르키던 "박지민" 인스턴스는 용도가 끝나게되어, 가르키는 참조변수가 없게된다. (나중에 삭제대상이 된다.)
		info = new PhoneInfor("민윤기", "000-1111-1111");
		info.showInfo();
		
		

	}

}
