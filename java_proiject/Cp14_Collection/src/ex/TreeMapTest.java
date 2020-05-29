package ex;

import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.TreeMap;

public class TreeMapTest {

	public static void main(String[] args) {
		
		TreeMap<Integer, String> tMap=new TreeMap<>();
		
		tMap.put(1,"data1");
		tMap.put(3,"data3");
		tMap.put(5,"data5");
		tMap.put(4,"data4");
		tMap.put(2,"data2");

		
		// Map ㅡ> Collection
		// Map ㅡ> Set 
		NavigableSet<Integer> navi=tMap.navigableKeySet();  // NavigableSet은 set을 구현하고 있는 클래스?
		
		Iterator<Integer> itr=navi.iterator();   // Iterator사용하여 오름차순정렬
		
		while(itr.hasNext()) {
//			System.out.println(itr.next());   //키의 집합을 만든 것이 확인가능하다. 
			System.out.println(tMap.get(itr.next()));   //데이터 가져오기
		
			
		System.out.println("내림차순으로 정렬");
		itr=navi.descendingIterator();
			
		while(itr.hasNext()) {
//			System.out.println(itr.next());   //키의 집합을 만든 것이 확인가능하다. 
			System.out.println(tMap.get(itr.next()));   //데이터 가져오기
			
		}
		
		
	}

	}}
