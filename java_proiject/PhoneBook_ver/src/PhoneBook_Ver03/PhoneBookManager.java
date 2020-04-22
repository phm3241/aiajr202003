package PhoneBook_Ver03;

import java.util.Scanner;

/*
	전화번호 정보를 저장하는 기능만을 포함하는 클래스
	1. 사용자로부터 데이터를 받아서 인스턴스를 생성하고 반환하는 기능
	
 */

public class PhoneBookManager {
		// 배열을 컨트롤하는 메서드
	
	
//		PhoneInfor[] pBooks=new PhoneInfor[100]; // 이런방법보다 주로 아래 생성자 통하는 방법으로 사용

		PhoneInfor[] pBooks;
		
		
		// 중요한 역할을 하는 변수이다!
		// 입력된 친구의 정보 갯수 ㅡ> 입력된 배열의 요소 갯수
		// 1. 참조할 때 반복의 횟수
		// 2. 새로운 객체를 저장할 때 index로 사용
		int cnt;
		
		// 입력 받을 떄도 쓰고, 검색할때도 Scanner를 쓰니까 
		// 공용으로 쓸 수 있도록 인스턴스 변수에 선언.
		Scanner sc;
		
		// 생성자 초기화 : 가능한 초기화할 수 있는 변수들? 넣기
		public PhoneBookManager() {
			// 배열초기화
			pBooks=new PhoneInfor[100];
			// 저장갯수 초기화
			cnt=0;
			// Scanner 객체 초기화
			sc=new Scanner(System.in);
			
		}
		
		
		// 메서드1-배열에 저장 : 이름, 전화번호, 생년월일 정보를 입력받아 생성된 객체를 배열에 저장
		// 배열에 PhoneInfor 타입의 참조값을 저장
		// 아래 PhoneInfor creatInstance()와 합칠 수도 있는데, 분리한 것이다. 
		void addInfo(PhoneInfor info) {   //info는 아래에 creatInstance() 메서드에 있는 info이다. 
			// 배열에 요소 대입
			pBooks[cnt]=info;
			
			// 등록된 정보의 갯수를 증가
			cnt++;
		}

		void addInfo() {   //info는 아래에 creatInstance() 메서드에 있는 info이다. 
			// 배열에 요소 대입
			// pBooks[cnt]=info;  info대신에 createInstance()를 받아주면 info를 반환하니까.
			pBooks[cnt]=createInstance();
			
			// 등록된 정보의 갯수를 증가
			cnt++;
		}
	
		// 메서드2 : 사용자의 입력데이터로 PhoneInfor 객체를 생성하는 기능
		PhoneInfor createInstance() {
			
			PhoneInfor info=null;    // 반환하기 위한 변수선언

			System.out.println("친구의 정보를 저장하기 위한 데이터를 입력합니다.");
			System.out.println("이름을 입력해주세요 >> ");
			String name=sc.nextLine();
			
			System.out.println("전화번호를 입력해주세요 >> ");
			String phoneNumber=sc.nextLine();
			
			System.out.println("생년월일을 입력해주세요 >> ");
			String birthday=sc.nextLine();
			
			// 사용자의 입력 데이터에 따라 인스턴스 생성 방법을 구분 
			if(birthday==null || birthday.trim().isEmpty()) {
				info=new PhoneInfor(name, phoneNumber);
			}else {
				info=new PhoneInfor(name, phoneNumber, birthday);
			}
				// trim 메서드는 스페이스바를 눌러서 공백이 들어가면, 양쪽의 공백을 제거해주는 기능
				// isEmpty 메서드는 빈문자열일때를 확인해주는 기능?
				// ㅡ> 우선 trim으로 양쪽공백제거해주고, isEmpty로 빈문자열인지 확인. 
				// 또는 참조변수 null로 빈문자열인지 확인.
			
			return info;
			// return new PhnoneInfo();  // 이렇게하면 사용자가 입력하는게 두가지 타입이라 안된다.
			// 그래서 if문을 써서 생년월일 입력에 따라 다른 인스턴스 생성되도록 하고,
			// return은 info변수로 한다. 이렇게 return하기 위해 위에서 미리 변수선언한다.

			
	}

		// 메서드3 : 전체 리스트 출력 기능
		void showAllData() {
			
			// 전체 데이터ㅡ> 입련된 데이터의 갯수 cnt
			for(int i=0; i<cnt; i++) {
				pBooks[i].showInfo();
				System.out.println("---------------------------------");
			}
		}
		
		
		// 메서드4-검색하고 찾기: 배열에서 이름을 기준으로 검색 후 ㅡ> index 값을 반환
		//   ㅡ> 반환된 index 값을 대입하여 ㅡ> 정보출력하는 메서드, 삭제하는 메서드에 활용.
		// 정보출력하는 메서드, 삭제하는 메서드에서 중복되는 부분(인덱스 찾는 반복문)을 따로 빼주고, 줄일 수 있다. 
		int searchIndex(String name) {
			
			int searchIndex=-1;
			for(int i =0; i<cnt; i++) {
				if(pBooks[i].checkName(name)) {   // 입력받은 이름과 배열안에 이름이 같은지 확인하는 메서드 사용.
					searchIndex=i;
					break;
				}
			}
			return searchIndex;
		}
		
		
		// 메서드4-검색하고 출력: 이름을 기준으로 데이터를 찾아서 해당 데이터의 정보를 출력
		// 배열의 요소(PhoneInfor)의 name 속성 값으로 배열의 요소
		void searchInfo() {
			 
			System.out.println("검색하고자하는 이름을 입력해주세요");
			String name=sc.nextLine();
			
			// 검색결고가 없을 때 써야할 기준값이 필요
			int searchIndex=searchIndex(name);
			
			// 사용자가 입력한 이름으로 배열에 요소를 검색 ㅡ> 배열의 index를 찾는다. 
			// (cnt) ㅡ> 
//			for(int i =0; i<cnt; i++) {
//				if(pBooks[i].checkName(name)) {   // 입력받은 이름과 배열안에 이름이 같은지 확인하는 메서드 사용.
//					searchIndex=i;
//					break;
			// 인덱스를 반환하는 메서드를 만들었으니까, 반복문으로 대입해가면서 요소를 찾을 필요가 없다. 
			
//				}
//			}
			
			if(searchIndex<0) {
				System.out.println("찾으시는 이름의 데이터가 존재하지 않습니다");
			}else {
				pBooks[searchIndex].showInfo();
			}
			
		}
		
		// 메서드5-검색하고 삭제 : 이름을 기준으로 데이터를 찾아서 해당 데이터를 삭제

		void deleteInfo() {
			 
			System.out.println("삭제하고자하는 이름을 입력해주세요");
			String name=sc.nextLine();
			
			// 삭제결과가 없을 때 써야할 기준값이 필요
			int searchIndex=searchIndex(name);
			
			// 사용자가 입력한 이름으로 배열에 요소를 검색 ㅡ> 배열의 index를 찾는다. 
//				if(pBooks[i].checkName(name)) {   // 입력받은 이름과 배열안에 이름이 같은지 확인하는 메서드 사용.
//					searchIndex=i;
//					break;
//				}
//			}
			// 인덱스를 반환하는 메서드를 만들었으니까, 반복문으로 대입해가면서 요소를 찾을 필요가 없다. 
			
			
			// 삭제
			// pBooks[2] : 삭제, pBook[2]=null 
			// 데이터 삭제 후 남아있는 데이터 처리는 데이터를 빈 공란이 없이 순차적으로
			// 재정리 2번이 삭제되었다면 3번 이후 데이터들의 주소 값이 -1 처리되어 재저장.
			
			if(searchIndex<0) {
				System.out.println("찾으시는 이름의 데이터가 존재하지 않습니다");
			}else {
				// 삭제 :  검색한 index부터 저장된 위치까지 왼쪽으로 시프트
				for(int i=searchIndex; i<cnt-1; i++) {
					pBooks[i]=pBooks[i+1];
				}
				
				// 중요! 저장된 정보의 갯수를 -1, 하나 삭제되었으므로.전체 정보갯수를 1뺴준다. 
				cnt--;   
				System.out.println("요청하신 이름의 정보를 삭제했습니다");
			}
			
		}
		
		
		
		
		
}






