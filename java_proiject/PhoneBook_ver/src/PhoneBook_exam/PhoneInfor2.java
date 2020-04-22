package PhoneBook_exam;

import java.util.Scanner;

/*Project : ver 0.20
"프로그램 사용자로부터 데이터 입력"
프로그램 사용자로부터 데이터를 입력 받아 클래스의 인스턴스를 생성하는 것이 핵심.
단 반복문을 이용해서 프로그램의 흐름을 계속 유지하도록 한다.
프로그램 종료를 하지 않으면, 다음과 같은 과정이 반복적으로 이루어짐.

키보드로부터 데이터 입력 
↓
입력 받은 데이터로 인스턴스 생성
↓
생성된 인스턴스의 메소드 호출*/

//public class PhoneInfor2 {
//
//	public static String InputInfor() {
//		
//		PhoneInfor1[] p4;
////		PhoneInfor1 [] arr=new PhoneInfor1[name,];
////		PhoneInfor1 [] arr=new PhoneInfor1[p4];
//		
//		// 언제까지 반복할지 모르기 때문에 while 무한반복문 사용
//		while(true) {
//			
//			// 키보드로부터 데이터 입력 
//			Scanner s=new Scanner(System.in);
//			System.out.println("이름을 입력하세요(필수)");
//			String name=s.nextLine();
//	
//			System.out.println("전화번호를 입력하세요(필수)");
//			String phonNumber=s.nextLine();
//			
//			System.out.println("생년월일을 입력하세요(선택)");
//			String birthday=s.nextLine();
//			
//			
//			// 입력 받은 데이터로 인스턴스 생성
//			PhoneInfor1 p1=new PhoneInfor1(name, phonNumber);
//			PhoneInfor1 p2=new PhoneInfor1(name, phonNumber, birthday);
//			p3=p1;
//			p4=p2;
//			
//			
//			// 생성된 인스턴스의 메소드 호출
//			// 생년월일을 작성했을 떄와 안했을 때 출력 다르게
//			if(birthday.length()==0)
//				p1.showInfo1();
//			else
//				p2.showInfo2();
//				
//			
//			// 프로그램 종료를 숫자입력으로 받아 반복문 종료
//			System.out.println("----------------------------------");
//			System.out.println("입력계속은 1, 프로그램종료는 0을 입력하세요");
//			int goStop=s.nextInt();
//			
//			if(goStop!=1) 
//				break;
//			
//			}
//		return p1;
//	}
//}
