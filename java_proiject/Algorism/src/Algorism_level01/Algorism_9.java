package Algorism_level01;

import java.util.Scanner;

/*
작성자 : 박혜미
작성일시 : 2020.04.12
수정일시 : 2020.05.14
수정내용 : 스캐너로 사용자에게 숫자 입력받는 기능 추가.
		 반복문과 조건문으로 특정숫자까지 3의배수까지의 합구하기

----------------------------------------------------------------------
문제  9. 특정 숫자 까지의 3의배수 합 구하기
*/
public class Algorism_9 {

	public static void main(String[] args) {
		
		// 1- 사용자에게 특정 숫자를 입력받는다.
		Scanner kb=new Scanner(System.in);  // 입력받기 위해 스캐너 임포트
		
		System.out.println("특정 숫자까지의 3의 배수 합 구하기");
		System.out.println("특정 숫자를 입력해주세요.");
		int num1=kb.nextInt(); // 특정숫자 변수선언
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		System.out.println("특정 숫자 : "+num1);
		
		// 2- 반복문으로 특정숫자까지 합구하기. 
		// 조건문으로 3의 배수일때만 합구해지도록 설정.
		int sum=0;
		for(int i=0; i<=num1; i++) {
			if(i%3==0) {
				sum=sum+i;
			}
		}
		
		
		// 3- 교환결과 출력하기
		System.out.println("특정 숫자 "+num1+"까지의 3의 배수 합은  "+sum+"입니다.");
	
		
	} //main end
} //class end