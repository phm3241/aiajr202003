package ex;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class HashSetTest {

	public static void main(String[] args) {
		
		
		HashSet<String> set = new HashSet<String>();
		// HashSet<String> set = new HashSet<>();  // 앞에서 <String>을 지정했기 떄문에 뒤에서는 생략가능하다.
		// Set<String> set = new HashSet<>();   // 다형성. 상위클래스인 인터페이스 set으로 해도 가능하다.

		set.add("First");		 
		set.add("Secound");
		set.add("Third");
		set.add("First");  //중복확인용
		// String은 equals("") 문자열 비교해서 true/false 반환
		// 따라서 String 타입은? 입력할 때마다 자동으로 equals로 비교해서 중복체크한다.
		// 따라서 중복확인용으로 추가했던 마지막 "First"는 자동으로 중복확인이 되어 저장되지 않았다. 
		
		System.out.println("저장된 데이터의 개수: "+set.size());    // 개수가 3개가 출력됨. 
		
		
		// iterator는 순서없이 산정해 있는 set의 데이터들이 순서를 가질 수 있도록 저장
		Iterator<String> itr=set.iterator();   
		
		while(itr.hasNext()){    // hasNext는 커서가 밑으로 내려와 다음번 요소가 있는지 확인 후 true/false 반환
			System.out.println(itr.next());	  //커서가 내려와서 다음요소를 반환
		}
		
		
		
	}

}
