package api;

public class StringTest {

	public static void main(String[] args) {
		
		// 주소값 비교(동등비교)
		String str1="My String";
		String str2="My String";
		String str3="Your String";
		
		// 비교연산 ㅡ> 결과가 true 또는 false
		System.out.println(str1==str2);    // true 출력.  
		System.out.println(str1==str3);    // false 출력.  
		
		
		
		
		System.out.println("------------------------------");
		
		
//		java.lang.String str="My name is JAVA";
		// String 클래스는 원래 Java API에서 제공해주는 클래스이다. java.lang. 은 생략가능.
		// 따라서 이미 만들어진 String 클래스 안에 있는 변수, 메서드를 활용한다. 
		
		String str="My name is JAVA";  
		
		int strLength=str.length();
		System.out.println("문자열 str의 문자열의 길이는: " +strLength);
		
		int strLength2="한글의 길이는?".length();
		System.out.println("길이는: " +strLength2);
		
		// ex. 활용예시. 회원가입할 때 이름 공백이면, length가지고 체크해서 이름 입력하라고 다시 알려주기. 
		
		
//		length // api 설명내용 참고. 
//		public int length() // int 타입 메서드다. 
//		Returns the length of this string. // 스트링의 길이를 반환해준다. 
//		The length is equal to the number of Unicode code units in the string. //각각 문자 하나씩을 저장한다하는 것. 
//		Specified by:length in interface CharSequenceReturns:the length of the sequence of characters represented by this object.
				
				
				

	}

}
