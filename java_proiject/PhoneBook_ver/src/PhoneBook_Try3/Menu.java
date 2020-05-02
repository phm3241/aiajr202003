package PhoneBook_Try3;

public interface Menu {
	// 메인메뉴만 상수로 있는 인터페이스
	
	int INSERT_INFO=1;  	// 1. 친구정보 추가
	int SEARCH_INFO=2;  	// 2. 친구정보 검색
	int EDIT_INFO=3;		// 3. 친구정보 수정
	int DELETE_INFO=4;		// 4. 친구정보 삭제
	int SHOW_ALL_INFO=5;	// 5. 친구정보 전체보기
	int EXIT=6;				// 6. 프로그램 종료
	
	
	int UNIV=1;				// 1-1. 대학친구
	int COMPANY=2;			// 1-2. 회사친구
	int CAFE=3;				// 1-3. 동호회친구
	
	
}
