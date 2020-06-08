package PhoneBook_Ver07_JDBC;

import java.util.InputMismatchException;
import java.util.Scanner;

import PhoneBook_Ver06_TEST.BadNumberException;
import PhoneBook_Ver06_TEST.MainMenu;

public class PhoneBookMain {

	// 스캐너는 스태틱으로 생성
	public static Scanner kb = new Scanner(System.in);

	public static void main(String[] args) {
		
		
		PbUnivManager uManager = new PbUnivManager();
		
		
		/* 데이터베이스 드라이버 로드 */
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		System.out.println("데이터베이스 드라이버 로드완료!");

		
		
		

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
			
			int select=0;
			
			try {
				select=manager.kb.nextInt();
				
				// 정상범위 1~6
				// MainMenu.INSERT_INFO ~ MainMenu.EXIT
				if(!(select >= MainMenu.INSERT_INFO && select<=MainMenu.EXIT)) {
					BadNumberException e= new BadNumberException("잘못된 메뉴입력입니다.");
							
					// 강제적인 예외발생
					throw e;
				}
				
			} catch(InputMismatchException e) {
				System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
				continue;
			} catch(BadNumberException e) {
				System.out.println("메뉴범위를 벗어난 숫자입력입니다. \n 확인하시고 다시 입력해주세요");
				continue;
			} catch(Exception e) {  // 생각치 못한 오류발생이 있을 수 있기 때문에.
				System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
				continue;
			} finally {
				manager.kb.nextLine();  
				// 버퍼발생을 없애주기 위해, finally에 넣어 예외가 발생하든 안하든 실행됨.
			}
			
			
			switch(select){
			case MainMenu.INSERT_INFO:
				frType();
				uManager.univInsert();
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
		
		
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		
		
		
		
		
		
	}// main end
	
	
	// 친구 타입 선택하는 메서드 
	public static PbBasicDto frType() {
		
		System.out.println("친구의 타입을 선택해주세요.");
		System.out.println(" 1.Basic ㅣ 2. Univ ㅣ 3. company ");
		int select=kb.nextInt();
		kb.nextLine();
		
		if(select==1) {
			PbBasicDto basic=new PbBasicDto();
			return basic;
			
		} else if(select==2) {
			PbBasicDto univ=new PbUnivDto();
			return univ;
			
		} else if (select==3) {
			PbBasicDto com=new PbComDto();
			return com;
		} else {
			System.out.println("메뉴의 숫자가 아닙니다. 확인 후 번호를 다시 선택해주세요.");
		}
		return null ;


	}

} //class end













