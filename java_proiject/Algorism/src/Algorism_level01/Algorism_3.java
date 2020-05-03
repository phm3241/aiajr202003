package Algorism_level01;

import java.util.Scanner;

/*
작성자 : 박혜미
작성일시 : 2020.04.12
수정일시 : 2020.05.03
수정내용 : 스캐너로 사용자에게 숫자 입력받는 기능 추가.

----------------------------------------------------------------------
문제 3. 짝수와 홀수 판별하기
 */

public class Algorism_3 {

	public static void main(String[] args) {

		// 1- 숫자를 받는다. 혹은 숫자를 저장한다. 
		int num;
		Scanner kb=new Scanner(System.in);  // 입력받기 위해 스캐너 임포트
				
		System.out.println("홀수,짝수를 판별할 숫자를 입력해주세요.");
		num=kb.nextInt();
		kb.nextLine();         // 버퍼발생
		
		// 2- 받은 수를 2로 나눈 나머지가 0 이면 "짝수"를 출력한다.
		if (num%2 == 0) { 
			System.out.println(num + "은 짝수 입니다.");		
		
		// 3- 나머지가 0 이 아니라면 "홀수"를 출력한다. 
		} else
			System.out.println(num + "은 홀수 입니다.");		
		
		}
}


