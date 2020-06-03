package PhoneBook_Ver07_JDBC;

import java.util.InputMismatchException;
import java.util.Scanner;

public class PhoneBookMain {

	// 스캐너는 스태틱으로 생성
	public static Scanner kb = new Scanner(System.in);

	public static void main(String[] args) {
		
		/* 데이터베이스 드라이버 로드 */
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		
		System.out.println("데이터베이스 드라이버 로드완료!");

		PbUnivMain univMain = new PbUnivMain();
		

		while(true) {
			System.out.println(" PhoneBook ");
			System.out.println(" 친구의 타입을 선택해주세요.");
			System.out.println("====================================================");
			System.out.println(" 1.기본친구 ㅣ 2.대학친구 ㅣ 3. 회사친구 ㅣ 4. 종료  ");
			System.out.println("====================================================");

			int select=0;
			
			try {
				select=kb.nextInt();
				
				// 정상범위 1~3
				if(!(select >= 1 && select<=3)) {
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
				kb.nextLine();  
				// 버퍼발생을 없애주기 위해, finally에 넣어 예외가 발생하든 안하든 실행됨.
			}
			
			
			
			
			switch(select){
			case 1:
				//uManager.createInfo();
				break;
			case 2:
				univMain.PbUnivMenu();
				break;
			case 3:
				//uManager.editInfo();
				break;
			case 4:
				System.out.println("프로그램을 종료합니다.");
				return;
			} // switch end
		} // while end
		
		
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
	}// main end

} //class end
