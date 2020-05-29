package ex;

import java.util.Scanner;

/*
예외발생은 .nextInt() 여기서 하는데, 
java API에서는 예외처리를 해주지 않고, 메서드를 호출해서 쓰는 쪽에서 예외처리하도록 throws로 던져놨기 때문에
예외처리를 해야하는 메서드를 호출해서 쓰는 사용자가 적절하게 예외처리를 별도로 해주어야한다. 
아래의 경우에는 AgeInputException라는 예외클래스를 별도로 생성하여 예외처리하였다.

*/
public class ExceptionEx {

	public static void main(String[] args) {
		
		// 이 부분을 readAge()라는 메서드로 만들어서 main에서 메서드 호출로 가져옴.
		// 그리고 예외발생시 메서드 안에서 처리되도록 한다.
		// 
//		Scanner kb=new Scanner(System.in);
//		System.out.println("나이를 입력해주세요.");
//		
//		int age=kb.nextInt();
//		kb.nextLine();

//		if(age<0) {
//			Exception e=new Exception("고의로 발생시킴"); // Exception를 생성해두고, 참조변수 e를 아래 throw에서 쓴다.
//			AgeInputException e=new AgeInputException();    // 사용자정의 Exception 클래스 사용.
//			
//			throw e; // 강제적으로 예외를 발생시키는 지점, 예외타입의 참조값 e를 던져줘야한다.
//			}
		
		
		
		try {

			int age = readAge();
			System.out.println("나이는 " + age + "세 입니다.");
			
		}catch(AgeInputException e) {
			System.out.println(e.getMessage());
		}catch(Exception e) {
			System.out.println("에러메시지: "+e.getMessage());
			e.printStackTrace();
		}
		System.out.println("프로그램이 정상 종료되었습니다. ");
	}

	
	// readAge()라는 메서드로 만들었다. 
	static int readAge() throws AgeInputException {   
		// 예외처리를 try~catch로 하지않고, 
		// throws AgeInputException를 하면, 호출한 메서드에서 처리한다. 
		
		
		Scanner kb=new Scanner(System.in);
		
		System.out.println("나이를 입력해주세요.");
		
		int age=kb.nextInt();
		kb.nextLine();
		
		if(age<0) {
//			Exception e=new Exception("고의로 발생시킴"); // Exception를 생성해두고, 참조변수 e를 아래 throw에서 쓴다.
			AgeInputException e=new AgeInputException();    // 사용자정의 Exception 클래스 사용.
			throw e; // 강제적으로 예외를 발생시키는 지점, 예외타입의 참조값 e를 던져줘야한다.
			}
		
		return age;

	}



}

















