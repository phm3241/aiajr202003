package Algorism_level01;

import java.util.Scanner;

/*
작성자 : 박혜미
작성일시 : 2020.04.12
수정일시 : 2020.05.03
수정내용 : 스캐너로 사용자에게 숫자 입력받는 기능 추가.
		조건문 추가하여 두 수가 같을 떄, "두 수는 크기가 같습니다." 라는 문자열로 결과출력.

----------------------------------------------------------------------
문제 4. 두 수중 큰 수 찾기
 */

public class Algorism_4 {

	public static void main(String[] args) {

		//1- 변수선언 : 두숫자
		int num1; 
		int num2;

		
		//2- 사용자에게 두 숫자를 입력받는다.
		Scanner kb=new Scanner(System.in);  // 입력받기 위해 스캐너 임포트
		
		System.out.println("두 수 중 큰 수 찾기");
		System.out.println("첫번째 숫자를 입력해주세요.");
		num1=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		
		System.out.println("두번째 숫자를 입력해주세요.");
		num2=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		
		
		// 3- 조건문과 삼항연산자로 결과출력
		if(num1==num2) {
			System.out.println("두 수는 크기가 같습니다.");
		}else {
			int result = num1 > num2 ? num1 : num2;
			System.out.println( num1 +", " + num2 + " 중 큰 수는 " + result + "입니다");
		}
	}
}