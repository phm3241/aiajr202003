package ex;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;


public class LinkedListTest {

	public static void main(String[] args) {

		// List<E> ㅡ> ArrayList<E>
		// List<E> : 저장 순서를 가진다. 데이터의 중복저장 가능
		// 순서 ㅡ> 일괄처리 (반복적인 동일한 작업을 빠르게 처리할 수 있다)
		// 리스트는 무조건 순서를 가지고 순서대로 처리하도록 되어있다. 
		
		
		// ArrayList 인스턴스 생성 : Integer타입의 객체만 저장 
		// List<Integer> list=new ArrayList<>();   // 다형성. ArrayLists는 List를 상속하고 있기 때문에 
		// ArrayList<Integer> list=new ArrayList<>();   // 인스턴스 생성시에 자료형을 생략가능하다. 자바 1.7이상에서.
		
		LinkedList<Integer> list=new LinkedList<Integer>();
		
		
		// List 인터페이스에 정의된 메서드 ㅡ> add(), remove(), size(), get() 
		// add(E) : 인스턴스의 저장, 
		// remove(index) : 해당 index의 요소를 삭제
		// size() : List 요소의 개수를 반환
		// get(index) : 해당 index 위치의 요소 반환
		
		// 데이터의 저장
		list.add(new Integer(30));
		list.add(new Integer(20));
		list.add(new Integer(10));
		list.add(0);
		list.add(1);
		// list.add(30);  Integer타입으로 지정해두었으니 wrapper class! ㅡ> Auto Boxing  
		
		
		// 데이터의 참조
		System.out.println("저장된 데이터를 확인합니다.");
		// 반복문을 통해서 일괄 참조 가능
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i));
			}
		
		// 데이터의 삭제
//		list.remove(1);
//		System.out.println("데이터 삭제 후 데이터를 확인합니다.");
//		for(int i=0; i<list.size(); i++) {
//			System.out.println(list.get(i));
//		}
			
		
//		String str1="one";
//		String str2="two";
//		String str3="three";
//		String str4="four";
//		
		
		// d1는 데이터값(str1)과 다음데이터로 가는 주소값(str2)가 들어있다.
		// LinkedList는 배열과 다르게 이렇게 노드형식(데이터값+다음데이터주소값)으로 구성되어 있다.
		// 따라서 배열처럼 행단위로 구성되어있는 것이 아니라 노드형식들이 자유롭게 산재되어있다. 
		// 노드에 다음데이터주소값을 가지고 있기 때문에, 자유롭게 있어도 다음값을 찾아가서 순서를 가지고 있을 수 있게 된다.
		// 따라서 수정과 삭제를 할때 번거롭게 데이터자체를 다 옮기는 것이 아니라, 노드내의 다음데이터주소값만 바꿔주면된다.
		
		// 배열은 참조변수 하나에 데이터값 하나만! 저장해둔 것이라서, 중간에 데이터를 추가 또는 삭제하려면, 
		// 데이터들을 다 뒤로 옮겨주거나, 앞으로 당겨주는 작업이 필요하다. arr.length도 임의로 수정해줘야한다. 
		// 만약 수정하게되어 정해놓은 배열length를 넘어가게되면, 새로만들어야한다....
		// LinkedList는 참조변수 하나에 (데이터값+다음데이터주소값)이 있는 노드형식이라서, 중간에 데이터를 추가 또는 삭제하면,
		// 다음데이터주소값만 수정해주면 된다. 따라서 list.size도 자동으로 변경된다. 
		
//		Data d1=new Data(str1,str2);     
//
//		
//		Data d2=new Data(str2,str3);
//		
//		Data d3=new Data(str3,null);
//
//		// 중간에 삽입
//		Data d4=new Data(str4, str2);   //
//		d1.setNextValue(str4);
		
		System.out.println("-----------------------------");
		System.out.println("Iterator를 이용한 모든 요소 출력");
		Iterator<Integer> itr=list.iterator();
		
		while(itr.hasNext()) {
			int num=itr.next();  // 현재위치에 있는 데이터를 가져올떄는 next()
			System.out.println(num);
//			System.out.println(itr.next());  // 한번 next()하면 출력할때 한번더 하지 않는다.
			
			
		}
		
		
		
		
		}

	}// main end


