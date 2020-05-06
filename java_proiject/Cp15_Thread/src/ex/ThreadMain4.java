package ex;

import javax.swing.JOptionPane;

public class ThreadMain4 {

	public static void main(String[] args) {
		
		System.out.println("프로그램을 시작합니다.");
		
		CountThread ct=new CountThread();   //카운트 스레드의 위치. 이름입력 위에있어야 같이 실행될 수 있따. 
		ct.start(); 
		
		String input=JOptionPane.showInputDialog("사용자의 이름을 입력해주세요. 10초가 지나면 프로그램이 종료됩니다.");
		
		
		
		System.out.println(input);
		
		
	}

}
