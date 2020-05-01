package ex;

import java.util.ArrayList;
import java.util.List;

public class ArrayListTest {

	public static void main(String[] args) {

		// List<E> ㅡ> ArrayList<E>
		// List<E> : 저장 순서를 가진다. 데이터의 중복저장 가능
		// 순서 ㅡ> 일괄처리 (반복적인 동일한 작업을 빠르게 처리할 수 있다)
		// 리스트는 무조건 순서를 가지고 순서대로 처리하도록 되어있다. 
		
		
		// ArrayList 인스턴스 생성 : Integer타입의 객체만 저장 
		// List<Integer> list=new ArrayList<>();   // 다형성. ArrayLists는 List를 상속하고 있기 때문에 
		// ArrayList<Integer> list=new ArrayList<>();   // 인스턴스 생성시에 자료형을 생략가능하다. 자바 1.7이상에서.
		
		ArrayList<Integer> list=new ArrayList<Integer>();
		
		
		// List 인터페이스에 정의된 메서드 ㅡ> add(), remove(), size(), get() 
		// add(E) : 인스턴스의 저장, 
		// remove(index) : 해당 index의 요소를 삭제
		// size() : List 요소의 개수를 반환
		// get(index) : 해당 index 위치의 요소 반환
		
		// 데이터의 저장
		list.add(new Integer(20));
		list.add(new Integer(10));
		list.add(new Integer(30));
		// list.add(30);  Integer타입으로 지정해두었으니 wrapper class! ㅡ> Auto Boxing  
		
		
		// 데이터의 참조
		System.out.println("저장된 데이터를 확인합니다.");
		// 반복문을 통해서 일괄 참조 가능
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i));
			}
		
		// 데이터의 삭제
		list.remove(1);
		System.out.println("데이터 삭제 후 데이터를 확인합니다.");
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i));
		}
		
		
		
	}

}
