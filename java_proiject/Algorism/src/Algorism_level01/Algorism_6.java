package Algorism_level01;

import java.util.Scanner;

/*
작성자 : 박혜미
작성일시 : 2020.04.12
수정일시 : 2020.05.03
수정내용 : 스캐너로 사용자에게 숫자 입력받는 기능 추가.
		사용자에게 비교할 숫자들을 입력받아 배열을 생성.
		기준값 설정하고 반복문으로 배열 내 숫자들을 비교하여 최대값 찾아 출력.

----------------------------------------------------------------------
문제 6. 최대값 찾기
*/

public class Algorism_6 {

	public static void main(String[] args) {
		
		// 1- 비교할 숫자들을 담을 배열 생성 : 사용자가 입력한 숫자의 크기로 
		int num;

		
		Scanner kb=new Scanner(System.in);  // 입력받기 위해 스캐너 임포트
		System.out.println("최대값찾기 : 비교할 숫자들의 총 개수를 입력해주세요");
		num=kb.nextInt();
		kb.nextLine();       	    // 버퍼발생을 없애기 위해 한번더 입력코드추가
		
		int[] arr=new int[num];		// 배열생성
		
		
		
		// 2- 배열에 숫자 입력받아서 넣기
		for(int i=0; i<num; i++) {
			System.out.println("비교할 숫자들을 하나씩 입력해주세요");
			arr[i]=kb.nextInt();
			kb.nextLine();       	    // 버퍼발생을 없애기 위해 한번더 입력코드추가
		}
		
		// 3- 최대값 찾기
		int max=arr[0];     			// 최대값을 찾기 위한 기준값 설정
		for(int i=0; i<num; i++) {		// 반복문으로 배열 내 숫자들과 기준값 비교
			if(max < arr[i]) {
				max=arr[i];
			}
		}

		// 4- 최대값 결과 출력하기 : 배열과 최대값
		System.out.print("비교하실 숫자 "+arr[0]);
		for(int i=1; i<num; i++) {
			System.out.print(", "+arr[i]);
		}
		System.out.println(" 에서 \n최대값은 " + max+"입니다.");
		
		
	
		
	} //main end
} //class end