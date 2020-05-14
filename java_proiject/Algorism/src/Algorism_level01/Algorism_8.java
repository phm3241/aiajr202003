package Algorism_level01;

import java.util.Scanner;

/*
작성자 : 박혜미
작성일시 : 2020.04.12
수정일시 : 2020.05.14
수정내용 : 스캐너로 사용자에게 숫자 입력받는 기능 추가.
		반복문 사용으로 합구하기
		

----------------------------------------------------------------------
문제  8. 작은 수에서 큰 수까지의 합 구하기
*/

public class Algorism_8 {

	public static void main(String[] args) {
		
		//1- 변수선언 : 작은수, 큰수
		int num1; 
		int num2;
		
		//2- 사용자에게 두 숫자를 입력받는다.
		Scanner kb=new Scanner(System.in);  // 입력받기 위해 스캐너 임포트
		
		System.out.println("작은 수에서 큰 수까지의 합 구하기");
		System.out.println("작은 숫자를 입력해주세요.");
		num1=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		System.out.println("작은 숫자 : "+num1);
		
		System.out.println("큰 숫자를 입력해주세요.");
		num2=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		System.out.println("큰 숫자 : "+num2);
				
		
		// 2- 작은 수부터 큰 수까지 반복문으로 합구하기
		int sum=0;
		for(int i=num1; i<=num2; i++) {
			sum=sum+i;
			System.out.println(sum);
		}
		
		
		// 3- 교환결과 출력하기
		System.out.println("작은 수 "+num1+"부터 큰수 "+num2+"까지의 합은 "+sum+"입니다.");
	
		
	} //main end
} //class end