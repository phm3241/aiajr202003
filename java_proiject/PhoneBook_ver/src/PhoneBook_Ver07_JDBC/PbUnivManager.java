package PhoneBook_Ver07_JDBC;

import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


public class PbUnivManager {


	//System.out.println("1. Insert  2. Search  3. Delete  4. Edit  5. List  ");
	
	PbUnivDao dao = PbUnivDao.getInstance();

		
	public PbUnivManager() {
	}


	public void univList() {
		
		// dao의  univList() 메서드 : 데이터처리하여 리스트로 반환
		List<PbUnivDto> univList = dao.univList();
		
		
		// 리스트 내용 확인 : if ~ else문
		// 리스트 내용 있으면 ㅡ> 출력 : for문 
		// ◆ 실수부분추가 : for문으로 출력만 했음.. ㅡ> if ~ else 추가 
		if(univList != null && univList.isEmpty()) {
			System.out.println("대학친구 전체리스트");
			System.out.println("--------------------------------------------------------");
			System.out.println("이름 \t 전화번호 \t 주소 \t 이메일 \t전공 \t 학년 ");
			System.out.println("--------------------------------------------------------");
			
			
			for(int i=0; i<univList.size(); i++) {
				System.out.printf("%5s", univList.get(i).getIdx()+"\t");
				System.out.printf("%5s", univList.get(i).getName()+"\t");
				System.out.printf("%12s", univList.get(i).getPhoneNumber()+"\t");
				System.out.printf("%12s", univList.get(i).getAddress()+"\t");
				System.out.printf("%12s", univList.get(i).getEmail()+"\t");
				System.out.printf("%12s", univList.get(i).getRegdate()+"\t");
				System.out.printf("%12s", univList.get(i).getMajor()+"\t");
				System.out.printf("%12s", univList.get(i).getGrade()+"\n");
			}
	
			System.out.println("--------------------------------------------------------");
		}else {
			System.out.println("입력된 데이터가 없습니다.");
		}
	
	} //univList() end
		
		
	
	public void univInsert() {


		// 사용자 입력정보 받기
		System.out.println("대학친구 정보 입력을 시작합니다.");

		System.out.println("단축번호 : ");
		int idx = PhoneBookMain.kb.nextInt();
		PhoneBookMain.kb.nextLine();

		System.out.println("친구의 이름 : ");
		String name = PhoneBookMain.kb.nextLine();

		System.out.println("친구의 전화번호 : ");
		String phoneNumber = PhoneBookMain.kb.nextLine();
		
		System.out.println("친구의 주소 : ");
		String address = PhoneBookMain.kb.nextLine();

		System.out.println("친구의 이메일 : ");
		String email = PhoneBookMain.kb.nextLine();
		
		System.out.println("친구의 전공 : ");
		String major = PhoneBookMain.kb.nextLine();
		
		System.out.println("친구의 학년 : ");
		int grade = PhoneBookMain.kb.nextInt();
		PhoneBookMain.kb.nextLine();
		
		LocalDate today = LocalDate.now();
		String regdate = today.toString();
		System.out.println("등록일자 : "+ regdate);
		
		
		// 사용자 입력정보 ㅡ> univ 객체로 생성
		PbUnivDto univ = new PbUnivDto(idx, name, phoneNumber, address, email, regdate, major, grade);

		
		// 생성한 univ객체 ㅡ> dao에 매개변수로 전달
		// dao에서 데이터 입력처리 후, 처리한 행개수 반환
		int resultCnt = dao.univInsert(univ);
		
		
		// 입력결과출력
		if (resultCnt > 0) {
			System.out.println("정상적으로 입력되었습니다.");
			System.out.println(resultCnt+"개 행 입력되었습니다.");
		} else {
			System.out.println("정상적으로 입력되지 않았습니다. 확인 후 다시 입력해주세요.");
		}
		
	}
	
	
	
	public void univSearch() {
		
		// PbUniv타입 리스트 생성
		List<PbUnivDto> univList = new ArrayList<>();
		
		System.out.println("찾으시는 대학친구 이름을 입력해주세요.");
		String searchName = PhoneBookMain.kb.nextLine();
		
		
		univList = dao.univSearch(searchName);
		
		
		if(univList != null) {
			for(int i=0; i<univList.size(); i++) {
				System.out.printf("%5s", univList.get(i).getIdx()+"\t");
				System.out.printf("%5s", univList.get(i).getName()+"\t");
				System.out.printf("%12s", univList.get(i).getPhoneNumber()+"\t");
				System.out.printf("%12s", univList.get(i).getAddress()+"\t");
				System.out.printf("%12s", univList.get(i).getEmail()+"\t");
				System.out.printf("%12s", univList.get(i).getRegdate()+"\t");
				System.out.printf("%12s", univList.get(i).getMajor()+"\t");
				System.out.printf("%12s", univList.get(i).getGrade()+"\n");
			}
			
			
		} else {
			System.out.println("찾으시는 검색결과가 없습니다. 확인 후 다시 검색해주세요. ");
		}
	}
	
	
	
	public void univDelete() {
		
		System.out.println("삭제할 대학친구의 이름을 입력해주세요.");
		String searchName = PhoneBookMain.kb.nextLine();
		
		// 삭제할 이름 입력변수 ㅡ> dao에 매개변수로 전달
		// dao에서 데이터 삭제처리 후, 처리한 행개수 반환
		int resultCnt = dao.univDelete(searchName);
		
		// 입력결과출력
		if (resultCnt > 0) {
			System.out.println("정상적으로 삭제되었습니다.");
			System.out.println(resultCnt+"개 행 삭제되었습니다.");
		} else {
			System.out.println("정상적으로 삭제되지 않았습니다. 확인 후 다시 입력해주세요.");
		}
	}
	
	
	
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
			if(resultCnt>0) {
				univ = dao.searchName(searchName, conn);
			}
			
			// 사용자 입력정보 받기 - 수정내용
			
			System.out.println("-------------------------------------");
			System.out.println("단축 번호와 이름은 수정할 수 없습니다.");
			System.out.println("수정할 친구의 단축번호 : "+univ.getIdx());
			System.out.println("수정할 친구의 이름 : "+searchName);
			System.out.println("-------------------------------------");
			
			int idx = univ.getIdx();
			
			System.out.println("대학친구 정보수정을 시작합니다. ");
			System.out.println("전화번호 : " +(univ.getPhoneNumber()));
			String phoneNumber = PhoneBookMain.kb.nextLine();
			
			System.out.println("주소 : " +(univ.getAddress()));
			String address = PhoneBookMain.kb.nextLine();
	
			System.out.println("이메일 : " +(univ.getEmail()));
			String email = PhoneBookMain.kb.nextLine();
	
			System.out.println("전공 : " +(univ.getMajor()));
			String major = PhoneBookMain.kb.nextLine();
	
			System.out.println("학년 : " +(univ.getGrade()));
			int grade = PhoneBookMain.kb.nextInt();
			PhoneBookMain.kb.nextLine();
			
			LocalDate today = LocalDate.now();
			String regdate = today.toString();
			System.out.println("등록일자 : "+ regdate);
			
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
			
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		}
	} //univEdit() end


} //class end