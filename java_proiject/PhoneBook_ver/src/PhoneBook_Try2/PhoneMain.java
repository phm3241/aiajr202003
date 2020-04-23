package PhoneBook_Try2;

import PhoneBook_Ver03.PhoneInfor;

/*
Project : ver 0.30
배열을 이용해서 프로그램 사용자가 입력하는 정보가 최대 100개까지 유지되도록 프로그램을 변경. 

아래기능 삽입

저장 : 이름, 전화번호, 생년월일 정보를 대상으로 하는 저장
검색 : 이름을 기준으로 데이터를 찾아서 해당 데이터의 정보를 출력
삭제 : 이름을 기준으로 데이터를 찾아서 해당 데이터를 삭제

데이터 삭제 후 남아있는 데이터 처리는 데이터를 빈 공란이 없이 순차적으로
재정리 2번이 삭제되었다면 3번 이후 데이터들의 주소 값이 -1 처리되어 재저장.
*/

public class PhoneMain {

	public static void main(String[] args) {
		
		PhoneBookManager manager=new PhoneBookManager();
		
		PhoneInfor info=null;  // ◀ 추가한 코드...빠트려서... 
		
		while(true) {
			
			PhoneBookMainMenu.showMenu();
			
			int selectNum=manager.sc.nextInt();  // ◀ 추가한 코드..
			manager.sc.nextLine();  // ◀ 빠트린 부분.. 입력받고 난 뒷부분 버퍼?를 날려주어야 이름을 안적어도 넘어가지는 일이없다.
			
//			switch(manager.sc.nextInt()) {  ▶ 원래 작성코드...switch 매개변수로 바로 넣는 것이 아니라 변수선언하고 변수로 넣도록..    
			switch(selectNum) {         
			
			// 1. 친구 정보 입력
			case(1): 
				manager.addInfo();
				break;
			
			// 2. 친구 정보 검색
			case(2):
				manager.searchInfo();
				break;
			
			// 3. 친구 정보 삭제
			case(3):
				manager.deleteInfo();
				break;
			
			// 4. 전체 정보 출력
			case(4):
				manager.showAllData();
				break;
			
			// 5. 프로그램 종료
			case(5):
//				return;
				System.exit(0);
				break;
			
			}
		}
	}
}
