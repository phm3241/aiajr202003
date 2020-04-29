package PhoneBook_Ver05;

/*
PhoneBook_ver05
_문제분석

1.manager 클래스의 싱글톤 패턴처리
	1-1. 생성자 접근제어지시자 : private (인스턴스 생성 막는다.)
	1-2. 공동으로 사용할 인스턴스 생성 : static private
	1-3. 참조변수를 반환해주는 메서드 : static public
**자주보게될 패턴. 


2. interFace 기반의 상수표현 메뉴표현
	고교 친구 저장 : 1
	대학 친구 저장 : 2
	기본 정보 출력 : 3
	전체 정보 출력 : 4
	exit : 5


3. interfacr ㅡ> 추상클래스 ㅡ> 상속 관계 구조로 변경
*/

public class PhoneBookMain implements MainMenu  {

	public static void main(String[] args) {
		
		// PhoneBookManager manager=new PhoneBookManager(100);
		// PhoneBookManager를 싱글톤처리 했기 때문에 
		// 인스턴스 참조값을 반환하는 getInstance() 메서드를 사용하여 생성된 객체를 사용. 
		PhoneBookManager manager=PhoneBookManager.getInstance();
		
		
		try {
		
		// 인터페이스 MainMenu 의 상수로 메인에서 메뉴를 수정.
		while(true) {
			
			System.out.println("===메뉴를 선택해 주세요=========");
			System.out.println(" "+MainMenu.INSERT_INFO+". 친구정보 입력");
			System.out.println(" "+MainMenu.SEARCH_INFO+". 친구정보 검색");
			System.out.println(" "+MainMenu.DELETE_INFO+". 친구정보 삭제");
			System.out.println(" "+MainMenu.EDIT_INFO+". 친구정보 수정");
			System.out.println(" "+MainMenu.SHOW_ALL_INFO+". 친구정보 전체보기");
			System.out.println(" "+MainMenu.EXIT+". 프로그램 종료 ");
			System.out.println("=========================");
			
			switch(manager.kb.nextInt()){
			case MainMenu.INSERT_INFO:
				manager.createInfo();
				break;
			case MainMenu.SEARCH_INFO:
				manager.showInfo();
				break;
			case MainMenu.DELETE_INFO:
				manager.deleteInfo();
				break;
			case MainMenu.EDIT_INFO:
				manager.editInfo();
				break;
			case MainMenu.SHOW_ALL_INFO:
				manager.showAllInfo();
				break;
			case MainMenu.EXIT:
				System.out.println("프로그램을 종료합니다.");
				return;
			} // switch end
		} // while end
		} // try end
		
		// 예외처리 1. 이름과 전화번호는 필수사항으로 공백일 경우, 예외 처리되도록 작성.
		catch(EmptyException e){   
			System.out.println(e.getMessage());
			
		}
		
		
		
		
		
		
		
	}// main end

} //class end

