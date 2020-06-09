package PhoneBook_Ver07_JDBC2;

import java.util.InputMismatchException;
import java.util.Scanner;

import PhoneBook_Ver06_List.BadNumberException;
import PhoneBook_Ver06_List.MainMenu;
import PhoneBook_Ver06_List.PhoneBookManager;

public class PbUnivMain {

	public void PbUnivMenu() {

		PbManager uManager = new PbManager();

		while (true) {

			System.out.println("대 학 친 구 ");
			System.out.println("=================================================================");
			System.out.println("   1. List  2. Insert  3. Search  4. Delete  5. Edit  6. Exit");
			System.out.println("=================================================================");

			int select = 0;

			try {
				select = PhoneBookMain.kb.nextInt();

				// 정상범위 1~6
				if (!(select >= 1 && select <= 6)) {
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
				PhoneBookMain.kb.nextLine();
				// 버퍼발생을 없애주기 위해, finally에 넣어 예외가 발생하든 안하든 실행됨.
			}

			switch (select) {
			case 1:
				uManager.univList();
				break;
			case 2:
				uManager.univInsert();
				break;
			case 3:
				uManager.univSearch();
				break;
			case 4:
				uManager.univDelete();
				break;
			case 5:
				uManager.univEdit();
				break;
			case 6:
				System.out.println("프로그램을 종료합니다.");
				return;

			} // switch end
		} // while end
	} // PbUnivMenu() end

} // class end