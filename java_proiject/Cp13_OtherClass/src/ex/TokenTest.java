package ex;

import java.util.StringTokenizer;

public class TokenTest {

	public static void main(String[] args) {
		
		
		// 구분자를 따로 지정하지 않았을 때
		String phoneNumber="Tel 82-02-997-2059";
		
		StringTokenizer st1=new StringTokenizer(phoneNumber);
		
		// 다음행에 데이터가 있는지 확인하는 메서드를 반복.
		while(st1.hasMoreTokens()) {

			// 구분자를 따로 지정해주지 않으면, 공백(탭, 스페이스, 엔터)을 기준으로 다음줄로 넘겨서 문자를 반환해준다. 
			System.out.println(st1.nextToken());  
		}

		System.out.println("---------------------------");  
		
		System.out.println(phoneNumber);  
		
		
		// 구분자를 "-"으로 지정하였을 때
		StringTokenizer st2=new StringTokenizer(phoneNumber, " -", true);  
		//"-" 이것과 " -" 이렇게 하는 것이 다르다. 구분자는 문자 하나하나를 기준하기 때문에 공백과 "-" 모두 기준이 된다. 
		// true를 붙여주면, 기준값도 출력된다.
		
		while(st2.hasMoreTokens()) {
			
			// 구분자를 기준으로 다음줄로 넘겨서 문자를 반환해준다. 
			System.out.println(st2.nextToken());  
		}
		
		
		
		
		
		
		
	}

}
