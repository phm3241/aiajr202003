package PhoneBook_Ver04;

import java.util.Scanner;

public class PhoneBookMain {

	public static void main(String[] args, String name) {
		
		// 배열
		PhoneManager manager=new PhoneManager(100);
				
		
		while(true) {
			BooksMenu.showMenu();
			int menuChoice=Integer.parseInt(manager.kb.nextLine());
			
			switch(menuChoice) {
				
				// 1. 친구 정보 입력
				case 1:
					manager.InputInfo();
					break;
					
				// 2. 친구 정보 검색 후 출력
				case 2:
					manager.showAllInfo();
					break;
					
				// 3. 친구 정보 검색 후 삭제
				case 3:
					manager.showInfo();
					break;
					
				// 4. 친구 정보 검색 후 수정
				case 4:
					manager.deleteInfo();
					break;
					
				// 5. 친구정보 전체 보기
				case 5:
					manager.editInfo();
					break;
					
				// 6. 프로그램 종료	
				case 6:
					System.out.println("프로그램을 종료합니다.");
					return;
				}
		}
	}
}
