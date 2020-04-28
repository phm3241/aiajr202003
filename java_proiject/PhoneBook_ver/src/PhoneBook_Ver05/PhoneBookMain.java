package PhoneBook_Ver05;

public class PhoneBookMain implements MainMenu  {

	public static void main(String[] args) {
		
		// PhoneBookManager manager=new PhoneBookManager(100);
		// PhoneBookManager를 싱글톤처리 했기 때문에 
		// 인스턴스 참조값을 반환하는 getInstance() 메서드를 사용하여 생성된 객체를 사용. 
		PhoneBookManager manager=PhoneBookManager.getInstance();
		
		
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
			}
		}
	}
}
