package ex;

import java.util.HashMap;
import java.util.Map;

public class HashMapTest {

	public static void main(String[] args) {
		
		HashMap<Integer, String> map=new HashMap<Integer, String>();
		// HashMap<Integer, String> map=new HashMap<>();
		// Map<Integer, String> map=new HashMap<>();     // 다형성. Map 인터페이스를 구현하고 있는 HashMap
		
		
		map.put(1, "일번");
		map.put(2, "이번");
		map.put(3, "삼번");
		map.put(8, "팔번");

		
		// 참조 : get(키값) 메서드사용하여 데이터 참조
		System.out.println("1번 학생의 이름은: "+map.get(1));    //Auto Boxing 
		System.out.println("8번 학생의 이름은: "+map.get(8));    //Auto Boxing
		
		
		// 삭제 : remove(키값)
		map.remove(8);
		System.out.println("8번 학생 삭제");    //Auto Boxing
		System.out.println("8번 학생의 이름은: "+map.get(8));    //Auto Boxing
		
		System.out.println(map.get(2));
		System.out.println("key=2인 데이터 중복입력");
		
		// 키값은 중복허용이 되지 않는다. 
		map.put(2, "Two");
		System.out.println(map.get(2));   
		// set의 경우는 중복되었을 경우, 아예 추가적으로 저장되지 않았는데, 
		// map의 경우는 중복되었을 경운, 덮어써서 저장된다.  
		
		
		
		
		
	}

}
