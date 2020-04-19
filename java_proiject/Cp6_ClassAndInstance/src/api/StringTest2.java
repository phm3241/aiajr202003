package api;

public class StringTest2 {

	public static void main(java.lang.String[] args) {
		// [문제 1] 다음 형태로 String 인스턴스를 생성.
		// String str = “ABCDEFGHIJKLMN”;
		// 그리고 이 문자열을 역순으로 다시 출력하는 프로그램을 작성.
		
		String str = "ABCDEFGHIJKLMN";
		// System.out.print(str.length());   문자열 길이확인: 14(1부터시작)
		// System.out.print(str.charAt(13)); 문자열 마지막 문자확인: N(0부터시작)  
		for(int i=str.length()-1; i>=0 ; i--){ 
			System.out.print(str.charAt(i));
		}
		// .charAt은 문자열의 i번째 문자를 반환하는 메서드
		// 문자열 마지막문자부터 첫문자까지 역순으로 문자를 반환하도록 반복문사용
		
		
		//---------------------------------------------------------
		// [문제 2] 다음 형태로 주민번호를 담고 있는 String 인스턴스를 하나 생성
		// String str = “990929-1010123”
		// 이 문자열을 이용하여 중간에 삽입된 – 를 뺀 String 인스턴스를 생성.
		
		String str1 = "990929-1010123";
		
		// 풀이 1. .substring((int beginIndex,int endIndex)
		// 시작인덱스부터 끝인덱스미만까지 반환하는 메서드
		// -를 제외한 주민번호 앞문자열과 뒷문자열을 각각 출력
		System.out.println(str1.substring(0, 6)+str1.substring(7));

		// 풀이 2. .split(String regex)
		// 해당 문자를 기준으로 문자열을 잘라서 배열로 저장하는 메서드
		// "-"를 기준으로 문자열 자르고 배열출력
		String[] array = str1.split("-");
		System.out.println(array[0]+array[1]);
		
		// 풀이 3. .replace(char oldChar, char newChar)
		// 해당 문자를 다른 문자로 변경하는 메서드
		// "-"를 ""(빈문자열)로 변경하여 출력
		System.out.println(str1= str1.replace("-", ""));

		

		
		
		
		
		
		
	}

}
