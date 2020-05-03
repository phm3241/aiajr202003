package PhoneBook_Try3;

import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

public class PhoneBookManager {
	// 친구정보 리스트관리
	// 기능 : 친구정보 추가, 수정, 삭제, 출력
	// 싱글톤패턴
	
	
	// 변수 : 리스트선언, 스캐너선언
	List<PhoneInfo> books;
	Scanner kb;
	
	// 생성자 : 시스트 생성, 스캐너생성
	// 싱글톤패턴작업 ㅡ> 생성자 private으로 접근제어
	private PhoneBookManager(){
		books=new ArrayList<>();
		kb=new Scanner(System.in);
	}
	
	// ★★★실수부분★★★ 
	// ★★★싱클톤패턴 처리할때 static도 해야 메인실행되고 바로 getInstance 메서드를 사용할 수 있다.★★★
	// 싱글톤패턴작업 ㅡ> 인스턴스생성 후 private으로 접근제어
	private static PhoneBookManager manager=new PhoneBookManager();
	
	// ★★★실수부분★★★ 
	// ★★★싱클톤패턴 처리할때 static도 해야 메인실행되고 바로 getInstance 메서드를 사용할 수 있다.★★★
	// 싱글톤패턴작업 ㅡ> 인스턴스 참조변수 반환하는 메서드 
	public static PhoneBookManager getInstance() {
		return manager;
	}
	
	// 메서드1 : 친구추가 (리스트에)
	void addInfo(PhoneInfo info) {
		books.add(info);
	}
	
	// 메서드2 : 친구추가(사용자 입력 ㅡ> 인스턴스생성)
	void createInfo() {
		
		int select=0;
		String name=null, phoneNumber=null, address=null, email=null;

		
		while(true) {
			
				
			System.out.println("저장하실 친구 그룹을 선택해주세요");
			System.out.println("1.대학	2.회사	3.동호회");
				try {
					select=kb.nextInt();

					//만약에 메뉴선택 숫자범위를 벗어난다면, 강제에러발생!
					if(!(1<=select && select<=3)) {
						BadNumberException e = new BadNumberException("문제발생");
						throw e;
					}
						//예외처리
						}catch(BadNumberException e){
							System.out.println("메뉴 숫자범위를 벗어났습니다. \n 확인 후 다시 입력해주세요.");
							continue;
						
						}catch(InputMismatchException e){
							System.out.println("입력하신 것이 숫자가 아닙니다. \n 확인 후 다시 숫자를 입력해주세요.");
							continue;
			
						}catch(Exception e){
							System.out.println("확인 후 다시 입력해주세요.");
							continue;

						}finally {
							kb.nextLine();
						}
				break;
			} //while end
			
		
		

		while(true) {
		
			// ★★★실수부분★★★ 
			// ★★★이부분은 try 밖에 있어야한다.★★★
			System.out.println("이름을 입력해주세요.");
			name=kb.nextLine();
			
			System.out.println("전화번호를 입력해주세요.");
			phoneNumber=kb.nextLine();
			
			System.out.println("주소를 입력해주세요.");
			address=kb.nextLine();
			
			System.out.println("이메일을 입력해주세요.");
			email=kb.nextLine();
		
			
				try {
					
					//만약에 입력정보가 공백이면, 강제에러발생!
					// ★★★실수부분★★★ 
					// ★★★조건식 공백조건 변수명 모두 적어주어야한다. ★★★
//					if(kb.nextLine().trim().isEmpty()) {
					if(name.trim().isEmpty() || phoneNumber.trim().isEmpty() || address.trim().isEmpty() || email.trim().isEmpty()) {
						StringEmptyException e=new StringEmptyException();
						throw e;
					}
					
						//예외처리
						}catch(StringEmptyException e) {
							System.out.println("필수사항입니다. 정보를 입력해주세요.");
							continue;
							
						}catch(Exception e) {
							System.out.println("필수사항입니다. 정보를 입력해주세요.");
							continue;
						}
				break;
		} //while end
		
		
		PhoneInfo books=null;
		
		switch(select) {
		case Menu.UNIV:
			System.out.println("전공을 입력해주세요.");
			String major=kb.nextLine();
			
			System.out.println("학년을 입력해주세요.");
			String grade=kb.nextLine();
			
			books=new PhoneUnivInfo(name, phoneNumber, address, email, major, grade); 
			break;

		case Menu.COMPANY:
			System.out.println("회사를 입력해주세요.");
			String company=kb.nextLine();
			
			System.out.println("부서를 입력해주세요.");
			String depart=kb.nextLine();

			System.out.println("직업를 입력해주세요.");
			String job=kb.nextLine();
			
			books=new PhoneCompanyInfo(name, phoneNumber, address, email, company, depart, job);
			break;

		case Menu.CAFE:
			System.out.println("동호회 이름을 입력해주세요.");
			String cafeName=kb.nextLine();
			
			System.out.println("닉네임을 입력해주세요.");
			String nickName=kb.nextLine();
			
			books=new PhoneCafeInfo(name, phoneNumber, address, email, cafeName, nickName);
			
			break;
		
		} // switch end
		
		addInfo(books);
	
	} // createInfo() end
	

	
	
	// 메서드3 : 친구정보 검색 ㅡ> 인덱스 반환 (이름기준)
	int searchIndex(String name) {
		
		
		int searchName=-1;  // 검색결과가 없을 떄를 생각한 초기값
		
		for(int i=0; i<books.size(); i++) {
			if (books.get(i).checkName(name)) {
				searchName=i;
				break;
			}
		}
		return searchName;
	}

	
	
	// ★★★실수부분★★★ 
	// ★★★searchInfo()를 searchIndex(String name)으로 착각해서 메서드 생성을 안했다... ★★★
	// 메서드4 : 친구정보검색 (이름기준)
	void searchInfo() {
		System.out.println("찾으실 친구의 이름을 입력해주세요.");
		String name=kb.nextLine();
		
		int index=searchIndex(name);
		
		if(index<0) {
			System.out.println("찾으시는 이름의 정보가 없습니다.");
		} else {
			books.get(index).showBasicInfo();
		}
	}
	
	
	
	
	
	
	// 메서드5 : 친구정보 수정 (이름기준)
	void editInfo() {
		
		String phoneNumber;
		String address;
		String email;
		
		System.out.println("수정하실 친구의 이름을 입력해주세요.");
		String name=kb.nextLine();
		
		int index=searchIndex(name);
		PhoneInfo info=null;
		
		if(index<0) {
			System.out.println("찾으시는 이름의 정보가 없습니다.");
			
		} else {
			System.out.println("수정하실 친구의 이름은 "+books.get(index).getName()+"입니다.");
			
			
			while(true) {
				System.out.println("수정하실 전화번호를 입력하세요.");
				phoneNumber=kb.nextLine();
				
				System.out.println("수정하실 주소를 입력하세요.");
				address=kb.nextLine();
	
				System.out.println("수정하실 이메일을 입력하세요.");
				email=kb.nextLine();
				
					try {
						//만약에 입력정보가 공백이면, 강제에러발생!
						if(phoneNumber.trim().isEmpty() || address.trim().isEmpty() || email.trim().isEmpty()) {
							StringEmptyException e=new StringEmptyException();
							throw e;
						}
							
							//예외처리
							}catch(StringEmptyException e) {
								System.out.println("필수사항입니다. 정보를 입력해주세요.");
								continue;
								
							}catch(Exception e) {
								System.out.println("필수사항입니다. 정보를 입력해주세요.");
								continue;
							}
				break;
				
			}//while end
			
			
				if(books.get(index) instanceof PhoneUnivInfo) {
					System.out.println("수정하실 전공를 입력하세요.");
					String major=kb.nextLine();

					System.out.println("수정하실 학년를 입력하세요.");
					String grade=kb.nextLine();
				
					info=new PhoneUnivInfo(name, phoneNumber, address, email, major, grade); 

				}else if(books.get(index) instanceof PhoneCompanyInfo) {
					System.out.println("수정하실 회사를 입력하세요.");
					String company=kb.nextLine();
					
					System.out.println("수정하실 부서를 입력하세요.");
					String depart=kb.nextLine();

					System.out.println("수정하실 직업을 입력하세요.");
					String job=kb.nextLine();
					
					info=new PhoneCompanyInfo(name, phoneNumber, address, email, company, depart, job);
					
				}else  {	
					System.out.println("동호회 이름을 입력해주세요.");
					String cafeName=kb.nextLine();
					
					System.out.println("닉네임을 입력해주세요.");
					String nickName=kb.nextLine();
					
					info=new PhoneCafeInfo(name, phoneNumber, address, email, cafeName, nickName);
				}	
				
				books.remove(index);
				books.add(index, info);
				System.out.println("요청하신 친구정보를 수정했습니다.");
		}
	} // editInfo() end
	
	
	
	// 메서드6 : 친구정보 삭제 (이름기준)
	void delete() {
		System.out.println("삭제하실 친구 이름을 입력해주세요.");
		String name=kb.nextLine();
		
		int index=searchIndex(name);
		if(index<0) {
			System.out.println("찾으시는 이름의 정보가 없습니다.");
		} else {
			books.remove(index);
			System.out.println("요청하신 친구정보를 삭제했습니다.");
		}
	}
	
	// ★★★실수부분★★★ 
	// ★★★PhoneInfo의 메서드를 참조변수 books로 불러올때.. 문법고민했었다...books.get(i).showAllInfo()★★★
	// ★★★list의 메서드 get(i)를 사용하고 반복문으로 출력해야한다.★★★
	// 메서드7 : 전체정보출력
	void showAllData() {
		System.out.println("전체 친구정보를 출력합니다.");
		
		for(int i=0; i<books.size(); i++) {
			books.get(i).showAllInfo();
		}
		
	}
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
} // class end
