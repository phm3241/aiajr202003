package PhoneBook_Ver04_;

public class PhoneBookMain {

	public static void main(String[] args) {
		
		PhoneBookManager manager=new PhoneBookManager(100);
		
		// 
		while(true) {
			
			Menu.showMain();
			
			switch(manager.kb.nextInt()){
			case 1:
				manager.InputInfo();
				break;
			case 2:
				manager.showInfo();
				break;
			case 3:
				manager.deleteInfo();
				break;
			case 4:
				manager.editInfo();
				break;
			case 5:
				manager.showAllData();
				break;
			case 6:
				System.out.println("프로그램을 종료합니다.");
				return;
			}
		}
	}
}
