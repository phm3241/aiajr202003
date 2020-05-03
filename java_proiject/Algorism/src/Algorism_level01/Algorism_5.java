package Algorism_level01;

import java.util.Arrays;
import java.util.Scanner;

/*
작성자 : 박혜미
작성일시 : 2020.04.12
수정일시 : 2020.05.03
수정내용 : 스캐너로 사용자에게 숫자 입력받는 기능 추가.
		조건문과 배열정렬 두가지 방법으로 결과출력.

----------------------------------------------------------------------
문제 5. 세 수중 가장 큰 수 찾기 – 두 가지 방법
 */

public class Algorism_5 {

	public static void main(String[] args) {

		//1- 변수선언 : 두숫자
		int num1, num2, num3; 
		int result=0;   		// 결과를 담아둘 변수선언 및 초기화
		
		//2- 사용자에게 세 숫자를 입력받는다.
		Scanner kb=new Scanner(System.in);  // 입력받기 위해 스캐너 임포트
		
		System.out.println("세 수 중 큰 수 찾기");
		System.out.println("첫번째 숫자를 입력해주세요.");
		num1=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		
		System.out.println("두번째 숫자를 입력해주세요.");
		num2=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가

		System.out.println("세번째 숫자를 입력해주세요.");
		num3=kb.nextInt();
		kb.nextLine();         // 버퍼발생을 없애기 위해 한번더 입력코드추가
		
		
		// 3- 조건문, 비교연산자로 결과출력
		if(num1>num2 && num1>num3) {
			result=num1;
		}else if (num2>num1 && num2>num3) {
			result=num2;
		}else 
			result=num3;	
			
		System.out.println("비교결과 : 세 숫자 "+num1+','+num2+','+num3+" 중에 가장 큰 수는 "+result+"입니다.");
		
		// 3- 배열의 정렬로 결과출력
		int [] arr={num1,num2,num3};    // 사용자 입력 숫자를 배열에 넣늗다.
		Arrays.sort(arr);				// 배열을 오름차순으로 정렬 
		System.out.println("비교결과 : 세 숫자 "+num1+','+num2+','+num3+" 중에 가장 큰 수는 "+arr[2]+"입니다.");
			
		
		
	} //main end
} //class end