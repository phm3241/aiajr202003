package PhoneBook_Try3;

public class PhoneBookMain {

	public static void main(String[] args) {
		// 메인메뉴
		
		// ★★★실수부분★★★ 
		// ★★★가져오는 문법숙지필요★★★ 
		// ★★★싱클톤패턴 처리할때 static도 해야 메인실행되고 바로 getInstance 메서드를 사용할 수 있다.★★★
		// 싱글톤처리된 PhoneBookManager를 getInstance메서드로 참조변수가져오기
		PhoneBookManager manager=PhoneBookManager.getInstance();
		
		// 메인메뉴 
		while(true) {
			System.out.println("메뉴를 선택해주세요.");
			System.out.println(Menu.INSERT_INFO+". 친구정보 저장");
			System.out.println(Menu.SEARCH_INFO+". 친구정보 검색");
			System.out.println(Menu.EDIT_INFO+". 친구정보 수정");
			System.out.println(Menu.DELETE_INFO+". 친구정보 삭제");
			System.out.println(Menu.SHOW_ALL_INFO+". 친구정보 전체보기");
			System.out.println(Menu.EXIT+". 프로그램 종료");
			
			int select=manager.kb.nextInt();
			manager.kb.nextLine();
			
			switch(select) {
			case Menu.INSERT_INFO:
				manager.createInfo();
				break;
				
			case Menu.SEARCH_INFO:
				manager.searchInfo();
				break;
				
			case Menu.EDIT_INFO:
				manager.editInfo();
				break;
				
			case Menu.DELETE_INFO:
				manager.delete();
				break;
				
			case Menu.SHOW_ALL_INFO:
				manager.showAllData();
				break;
				
			case Menu.EXIT:
				System.out.println("프로그램을 종료합니다.");
				return;
				
			
			} //switch end
		} // while end
	} // main class end
} // class end
