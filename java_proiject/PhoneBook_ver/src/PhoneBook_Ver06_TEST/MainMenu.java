package PhoneBook_Ver06_TEST;

public interface MainMenu {
	/* 
	메뉴
	 1. 친구정보 입력
	 	1-1.대학  1-2.회사  1-3.동호회
	 2. 친구정보 검색
	 3. 친구정보 삭제
	 4. 친구정보 수정
	 5. 친구정보 전체보기
	 6. 프로그램 종료 
	 */
	
	
	// 인터페이스에는 상수나 추상메서드만 가능.
	// public static final 상수=리터럴;
	
	int INSERT_INFO=1;       // 1. 친구정보 입력
	int SEARCH_INFO=2;       // 2. 친구정보 검색
	int DELETE_INFO=3;       // 3. 친구정보 삭제
	int EDIT_INFO=4;         // 4. 친구정보 수정
	int SHOW_ALL_INFO=5;     // 5. 친구정보 전체보기
	int EXIT=6;   	         // 6. 프로그램 종료 
	
	int BASIC=1;
	int UNIV=2;              // 1-1.대학  
	int COMPANY=3;           // 1-2.회사  
	int CAFE=4;              // 1-3.동호회
	
	char INSERT_CHAR='i';    // ex. 사용자가 실수로 11을 눌러도 앞에 1만 뽑아서 판단가능 ㅡ> 메뉴1로 이동. 
	
}
