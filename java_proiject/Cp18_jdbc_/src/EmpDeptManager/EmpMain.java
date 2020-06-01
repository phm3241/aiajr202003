package EmpDeptManager;

import java.util.InputMismatchException;
import java.util.Scanner;




/*


1. 메인 
2. 핵심 class - 기능을 따로 구성
3. Dao - 기능 안에서도 데이터베이스관련 처리기능을 따로 구성

==>> 데이터베이스 처리할때는 이런식의 패턴구성이 생산성에 좋다. 


데이터 처리 흐름.. 
1. 메인 ㅡ> 핵심class ㅡ>Dao
 */


public class EmpMain {

	public static void main(String[] args) {

		Scanner kb = new Scanner(System.in);

		while (true) {
			System.out.println("EMP MAIN NENU");
			System.out.println("-----------------------------------------------------------------");
			System.out.println("  1. 사원관리 프로그램(emp)    2. 부서관리 프로그램(dept)    3. 프로그램 종료");
			System.out.println("-----------------------------------------------------------------");

			System.out.println("메뉴를 선택하세요.");

			int select = 0;

				try {
					select = kb.nextInt();
	
					// 정상범위 1~3
					if (!(select >= 1 && select <= 3)) {
						BadNumberException e = new BadNumberException("잘못된 메뉴입력입니다.");
	
						// 강제적인 예외발생
						throw e;
					}
	
				} catch (InputMismatchException e) {
					System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
					continue;
				} catch (BadNumberException e) {
					System.out.println("메뉴범위를 벗어난 숫자입력입니다. \n 확인하시고 다시 입력해주세요");
					continue;
				} catch (Exception e) { // 생각치 못한 오류발생이 있을 수 있기 때문에.
					System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
					continue;
				} finally {
					kb.nextLine();
					// 버퍼발생을 없애주기 위해, finally에 넣어 예외가 발생하든 안하든 실행됨.
				}

				
			switch (select) {

			case 1:
				// empManager();
				break;
			case 2:
				// deptManager();
				
				break;
			case 3:
				System.out.println("프로그램을 종료합니다.");
				return;

			} // switch end
			break;
		} // while end
	}



	
	
	
	

	
	
} // main end
