package Algorism_level01;

import java.util.Scanner;

/*
작성자 : 박혜미
작성일시 : 2020.04.12
수정일시 : 2020.05.03
수정내용 : 스캐너로 사용자에게 숫자 입력받는 기능 추가.
		

----------------------------------------------------------------------
문제  7. 두 변수 값 교환하기
*/

public class Algorism_7 {

	public static void main(String[] args) {
		
		//1- 변수선언 : 교환할 두 숫자와 빈저장공간 변수선언
		int num1; 
		int num2;
		int temp = 0;
		
		//2- 사용자에게 두 숫자를 입력받는다.
		Scanner kb=new Scanner(System.in);  // 입력받기 위해 스캐너 임포트
		
		System.out.println("두 수 교환하기");
		System.out.println("교환할 첫번째 숫자를 입력해주세요.");
		num1=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		System.out.println("교환할 첫번째 숫자:"+num1);
		
		System.out.println("교환할 두번째 숫자를 입력해주세요.");
		num2=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		System.out.println("교환할 첫번째 숫자:"+num2);
				
		
		
		// 2- 두 수 교환하기
		temp=num1;
		num1=num2;
		num2=temp;
		
		// 3- 교환결과 출력하기
		System.out.println("첫번째 숫자는 "+num1+"로 변경되었습니다.");
		System.out.println("두번째 숫자는 "+num2+"로 변경되었습니다.");
		
		
	
		
	} //main end
} //class end