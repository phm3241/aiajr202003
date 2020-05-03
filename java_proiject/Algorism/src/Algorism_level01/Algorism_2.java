package Algorism_level01;

import java.util.Scanner;

/*
작성자 : 박혜미
작성일시 : 2020.04.12
수정일시 : 2020.05.03
수정내용 : 스캐너로 사용자에게 두숫자 입력받는 기능 추가.

----------------------------------------------------------------------
문제 2. 두 수의 차 구하기 - 절대값을 이용하는 방법을 순차적으로 기술하세요.
 */

public class Algorism_2 {

	public static void main(String[] args) {

		//1- 변수선언 : 두숫자
		int num1; 
		int num2;

		
		
		//2- 사용자에게 두 숫자를 입력받는다.
		Scanner kb=new Scanner(System.in);  // 입력받기 위해 스캐너 임포트
		
		System.out.println("두 수의 차를 구하기 위한, 첫번째 숫자를 입력해주세요.");
		num1=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		
		System.out.println("두 수의 차를 구하기 위한, 두번째 숫자를 입력해주세요.");
		num2=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		
		
		
		// 3- 삼항 연산자로 두 수의 차를 절대값으로 출력.
		int result = num1-num2 == 0 ? 0 : num1-num2 < 0 ? (num1-num2)*-1:(num1-num2);
		
		System.out.println(num1 + ", " + num2 + "의 차이는 " + result + "입니다.");
		

	}

}
