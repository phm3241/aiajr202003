package PhoneBook_Ver07_JDBC2;

import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.List;

import PhoneBook_Ver06_List.BadNumberException;
import PhoneBook_Ver06_List.MainMenu;
import PhoneBook_Ver06_List.PhoneCafeInfor;
import PhoneBook_Ver06_List.PhoneCompanyInfor;
import PhoneBook_Ver06_List.PhoneInfor;
import PhoneBook_Ver06_List.PhoneUnivInfor;
import PhoneBook_Ver06_List.StringEmptyException;

public class PbManager {

	// System.out.println("1. Insert 2. Search 3. Delete 4. Edit 5. List ");

	PbUnivDao dao = PbUnivDao.getInstance();

	public PbManager() {
	}

	public void univList() {

		// dao의 univList() 메서드 : 데이터처리하여 리스트로 반환
		List<PbUnivDto> univList = dao.univList();

		// 리스트 내용 확인 : if ~ else문
		// 리스트 내용 있으면 ㅡ> 출력 : for문
		// ◆ 실수부분추가 : for문으로 출력만 했음.. ㅡ> if ~ else 추가
		if (univList != null && univList.isEmpty()) {
			System.out.println("대학친구 전체리스트");
			System.out.println("--------------------------------------------------------");
			System.out.println("이름 \t 전화번호 \t 주소 \t 이메일 \t전공 \t 학년 ");
			System.out.println("--------------------------------------------------------");

			for (int i = 0; i < univList.size(); i++) {
				System.out.printf("%5s", univList.get(i).getIdx() + "\t");
				System.out.printf("%5s", univList.get(i).getName() + "\t");
				System.out.printf("%12s", univList.get(i).getPhoneNumber() + "\t");
				System.out.printf("%12s", univList.get(i).getAddress() + "\t");
				System.out.printf("%12s", univList.get(i).getEmail() + "\t");
				System.out.printf("%12s", univList.get(i).getRegdate() + "\t");
				System.out.printf("%12s", univList.get(i).getMajor() + "\t");
				System.out.printf("%12s", univList.get(i).getGrade() + "\n");
			}

			System.out.println("--------------------------------------------------------");
		} else {
			System.out.println("입력된 데이터가 없습니다.");
		}

	} // univList() end

	//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public void insert() {

		// 사용자 선택 번호
		int select = 0; 
		
		// 객체생성 변수
		PbBasicDto info = null; 
		
		// 기본친구 입력변수
		String name = null, phoneNumber = null, address = null, email = null; 
		
		// 학교친구 입력변수
		String major = null; int grade = 0; 
		
		// 회사친구 입력변수
		String company = null;  
		
		// idx는 0으로 초기화, 데이터처리시 시퀀스로 입력
		int idx = 0; 
		
		// regdate는 현재시간
		LocalDate today = LocalDate.now(); 
		String regdate = today.toString();

		// 데이터처리 후 결과처리 행개수
		int resultCnt = 0; 

		// 드라이버 연결 객체 
		Connection conn = null;

		
		try {
			
			// 드라이버 연결
			conn = ConnectionProvider.getConnection();

			// 자동커밋되지 않도록 처리
			conn.setAutoCommit(false);

			
			// 사용자 입력요청 1 : 저장할 친구그룹 선택 ㅡ> 다시 입력받는 경우를 위해 while문.
			while (true) {

				System.out.println("저장하고자 하는 그룹의 번호를 입력해주세요.");
				System.out.println("1.Basic ㅣ 2.Univ ㅣ 3.com ");

				
				try {
					select = PhoneBookMain.kb.nextInt();

					
					// 정상범위 1~3를 벗어났을 때, 강제적 예외발생!
					if (!(select >= 1 && select <= 3)) {
						BadNumberException e = new BadNumberException("잘못된 메뉴번호 입력");
						throw e;
					}
					
					
				} catch (InputMismatchException e) {
					System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
					continue;
				} catch (BadNumberException e) {
					System.out.println("메뉴범위를 벗어난 숫자입력입니다. \n 확인하시고 다시 입력해주세요");
					continue;
				} catch (Exception e) { 
					System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
					continue;
				} finally {
					PhoneBookMain.kb.nextLine();
				}

				break;

			} // while end

			
			
			// 사용자 입력요청 2 : 기본 정보 수집 (이름, 전번, 주소, 이메일)
			while (true) {

				System.out.println("이름을 입력해주세요.");
				name = PhoneBookMain.kb.nextLine();

				System.out.println("전화번호를 입력해주세요.");
				phoneNumber = PhoneBookMain.kb.nextLine();

				System.out.println("주소를 입력해주세요.");
				address = PhoneBookMain.kb.nextLine();

				System.out.println("이메일을 입력해주세요.");
				email = PhoneBookMain.kb.nextLine();

				
				try {

					// 예외가 생긴다면, 강제 예외발생!
					// trim은 앞뒤 공백 잘라주는 기능. 그리고나서 isEmpty 공백문자확인기능.
					if (name.trim().isEmpty() || phoneNumber.trim().isEmpty() || address.trim().isEmpty()
							|| email.trim().isEmpty()) {

						StringEmptyException e = new StringEmptyException();
						throw e;
					}
				} catch (StringEmptyException e) {
					System.out.println("기본정보는 공백없이 모두 입력해주셔야합니다.");
					System.out.println("다시 입력해주세요\n.");
					continue;
				}

				break;

			} // while end

			
			
			// 사용자 입력정보 ㅡ>> 친구그룹 객체생성
			switch (select) {

			case MainMenu2.BASIC:

				// 2.2.2 기본 클래스로 인스턴스 생성
				info = new PbBasicDto(idx, name, phoneNumber, email, address, regdate);

				// 생성한 univ객체 ㅡ> dao에 매개변수로 전달
				// dao에서 데이터 입력처리 후, 처리한 행개수 반환
				resultCnt = dao.basicInsert(info, conn);
				break;

			case MainMenu2.UNIV:
				System.out.println("전공(학과)를 입력해주세요.");
				major = PhoneBookMain.kb.nextLine();
				System.out.println("학년 정보를 입력해주세요.");
				grade = PhoneBookMain.kb.nextInt();
				PhoneBookMain.kb.nextLine();

				// 2.2.3 대학 클래스로 인스턴스 생성
				info = new PbUnivDto(idx, name, phoneNumber, email, address, regdate, major, grade);

				// 생성한 univ객체 ㅡ> dao에 매개변수로 전달
				// dao에서 데이터 입력처리 후, 처리한 행개수 반환
				resultCnt += dao.univInsert((PbUnivDto) info, conn);
				break;

			case MainMenu2.COMPANY:
				System.out.println("회사의 이름을 입력해주세요.");
				company = PhoneBookMain.kb.nextLine();

				// 2.2.4 회사 클래스로 인스턴스 생성
				info = new PbComDto(idx, name, phoneNumber, email, address, regdate, company);

				// 생성한 univ객체 ㅡ> dao에 매개변수로 전달
				// dao에서 데이터 입력처리 후, 처리한 행개수 반환
				resultCnt += dao.comInsert((PbComDto) info, conn);
				break;

			} // switch end

			// 입력결과출력
			if (resultCnt > 0) {
				System.out.println("정상적으로 입력되었습니다.");
				System.out.println(resultCnt + "개 행 입력되었습니다.");
			} else {
				System.out.println("정상적으로 입력되지 않았습니다. 확인 후 다시 입력해주세요.");
			}

		} catch (SQLException e1) {
			if(conn != null) {
			
				try {
					conn.rollback();
					
				} catch (SQLException e) {
					System.out.println("rollback 에러!");
					e.printStackTrace();
				}
			}
			
		} if (conn != null) {
			
			try {
				conn.close();
				
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

	} // insert() end

	
	
	//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public void search() {

		// PbUniv타입 리스트 생성
		List<PbAllDto> result = new ArrayList<>();

		System.out.println("찾으시는 친구 이름을 입력해주세요.");
		String searchName = PhoneBookMain.kb.nextLine();

		result = dao.search(searchName);

		if (result != null) {
			for (int i = 0; i < result.size(); i++) {
				System.out.printf("%5s", result.get(i).getIdx() + "\t");
				System.out.printf("%5s", result.get(i).getName() + "\t");
				System.out.printf("%12s", result.get(i).getPhoneNumber() + "\t");
				System.out.printf("%12s", result.get(i).getAddress() + "\t");
				System.out.printf("%12s", result.get(i).getEmail() + "\t");
				System.out.printf("%12s", result.get(i).getRegdate() + "\t");
				System.out.printf("%12s", result.get(i).getMajor() + "\t");
				System.out.printf("%12s", result.get(i).getGrade() + "\t");
				System.out.printf("%12s", result.get(i).getCompany() + "\n");
			}

		} else {
			System.out.println("찾으시는 검색결과가 없습니다. 확인 후 다시 검색해주세요. ");
		}
	}

	public void Delete() {

		System.out.println("삭제할 친구의 이름을 입력해주세요.");
		String searchName = PhoneBookMain.kb.nextLine();

		// 삭제할 이름 입력변수 ㅡ> dao에 매개변수로 전달
		// dao에서 데이터 삭제처리 후, 처리한 행개수 반환
		int resultCnt = dao.univDelete(searchName);

		// 입력결과출력
		if (resultCnt > 0) {
			System.out.println("정상적으로 삭제되었습니다.");
			System.out.println(resultCnt + "개 행 삭제되었습니다.");
		} else {
			System.out.println("정상적으로 삭제되지 않았습니다. 확인 후 다시 입력해주세요.");
		}
	}

	
	//■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
	public void univEdit() {

		// 데이터베이스 드라이버 연결
		// 트랜잭션 처리해하므로 여기서 연결
		Connection conn = null;
		PbUnivDto univ = null;
		PbUnivDto newUniv = null;
		int resultCnt = 0;

		try {
			conn = ConnectionProvider.getConnection();

			// 트랜잭션이 끝나면 개발자가 직접 커밋할 수 있도록. 자동커밋되지 않게 false로 설정해둔다.
			conn.setAutoCommit(false);

			// 사용자 입력정보 받기 - 수정할 이름
			System.out.println("수정하실 친구의 이름을 입력해주세요.");
			String searchName = PhoneBookMain.kb.nextLine();

			// 수정할 이름이 기존DB에 있는지 확인
			resultCnt = dao.searchCnt(searchName, conn);

			// 기존 DB에 있다면 ㅡ> 기존정보 가져오기
			if (resultCnt > 0) {
				univ = dao.searchName(searchName, conn);
			}

			// 사용자 입력정보 받기 - 수정내용

			System.out.println("-------------------------------------");
			System.out.println("단축 번호와 이름은 수정할 수 없습니다.");
			System.out.println("수정할 친구의 단축번호 : " + univ.getIdx());
			System.out.println("수정할 친구의 이름 : " + searchName);
			System.out.println("-------------------------------------");

			int idx = univ.getIdx();

			System.out.println("대학친구 정보수정을 시작합니다. ");
			System.out.println("전화번호 : " + (univ.getPhoneNumber()));
			String phoneNumber = PhoneBookMain.kb.nextLine();

			System.out.println("주소 : " + (univ.getAddress()));
			String address = PhoneBookMain.kb.nextLine();

			System.out.println("이메일 : " + (univ.getEmail()));
			String email = PhoneBookMain.kb.nextLine();

			System.out.println("전공 : " + (univ.getMajor()));
			String major = PhoneBookMain.kb.nextLine();

			System.out.println("학년 : " + (univ.getGrade()));
			int grade = PhoneBookMain.kb.nextInt();
			PhoneBookMain.kb.nextLine();

			LocalDate today = LocalDate.now();
			String regdate = today.toString();
			System.out.println("등록일자 : " + regdate);

			// 사용자 입력 수정정보 ㅡ> 새로운 univ객체로 생성
			newUniv = new PbUnivDto(idx, searchName, phoneNumber, address, email, regdate, major, grade);

			// 수정한 새로운 객체 ㅡ> dao에 매개변수로 전달, 데이터처리 후 수정 행 개수 반환
			resultCnt = dao.univEdit(newUniv, conn);

			conn.commit();

		} catch (SQLException e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
	} // univEdit() end

} // class end