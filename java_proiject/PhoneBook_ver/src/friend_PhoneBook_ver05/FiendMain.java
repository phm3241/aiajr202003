package friend_PhoneBook_ver05;

import java.util.InputMismatchException;

public class FiendMain {

	public static void main(String[] args) {

		// FriendInfoHandler handler=new FriendInfoHandler(10);
		// FriendInfoHandler 클래스를 싱글톤 처리해 주었기 때문에, 
		// 아래처럼 인스턴스의 참조값를 반환하는 메서드로 가져와서 쓸 수 있다.  
		// 인스턴스가 하나만 만들어지기 떄문에 배열 또한 안전해진다. 저장공간이 하나만 생기게 되는거니까. 
		FriendInfoHandler handler=FriendInfoHandler.getInstance();
		
		
		while(true) {
			System.out.println("===메뉴를 선택해 주세요=========");
			System.out.println(" "+Menu.INSERT_HIGH+". 고교 친구 저장");
			System.out.println(" "+Menu.INSERT_UNIV+". 대학 친구 저장");
			System.out.println(" "+Menu.PRINT_BASIC+". 기본 정보 출력");
			System.out.println(" "+Menu.PRINT_ALL+". 전체 정보 출력");
			System.out.println(" "+Menu.EXIT+". 종료 ");
			System.out.println("=========================");
			
			
			int choice=0;
			// try문 안에 들어가게 되면, 선언이 되지 않을 수도 있다고 판단하기 때문에
			// try문 위에 변수선언해둔다.
			try {
				choice=handler.kb.nextInt();
				// InputMismatchException 인스턴스 전달
				// 숫자타입으로 받으면, 문제가 되지 않는데
				// 숫타타입이 아닌 걸로 받으면 문제가 생길 수 있으므로, 사용자 예외처리한다.
				
//			} catch(InputMismatchException e) {   
				// 원래는 InputMismatchException 인스턴스 전달인데, 
				// InputMismatchException는 Exception클래스를 상속하고 있는 클래스이므로,
				// 아래처럼 모든 Exception들의 최고조상인 Exception으로 받을 수 있다. 
				// 거의 대부분의 예외들은 Exception에 걸릴수 있기 때문에, 마지막에 Exception으로 받아준다.   
			} catch(InputMismatchException e) {    // 
				System.out.println("정상적인 메뉴의 번호 입력이 되지 않았습니다.");
				System.out.println("메뉴를 다시 입력해주세요.");
				handler.kb.nextLine();     // 앞의 버퍼 클리어 목적으로 사용
				continue;  // 감싸고 있는 블럭의 제일 마지막으로 간다.
			} catch(Exception e2) {    // 
				System.out.println("예외발생");
				handler.kb.nextLine();     // 앞의 버퍼 클리어 목적으로 사용
				continue;  // 감싸고 있는 블럭의 제일 마지막으로 간다.
			}
			
			
			
			switch(choice) {
			case Menu.INSERT_HIGH : case Menu.INSERT_UNIV:
				handler.addFriend(choice);
				break;
			
			case Menu.PRINT_BASIC:
				handler.showAllSimpleData();
				break;
			case Menu.PRINT_ALL:
				handler.showAllData();
				break;
			case Menu.EXIT:
				System.out.println("프로그램을 종료합니다");
				return;  // main 메서드를 종료시키기 때문에 프로그램이 종료된다.
			}
		}
	}
}
