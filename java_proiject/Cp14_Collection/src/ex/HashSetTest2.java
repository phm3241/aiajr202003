package ex;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class HashSetTest2 {

	public static void main(String[] args) {
		
		
		HashSet<SimpleNumber> set = new HashSet<SimpleNumber>();
		// HashSet<String> set = new HashSet<>();  // 앞에서 <String>을 지정했기 떄문에 뒤에서는 생략가능하다.
		// Set<String> set = new HashSet<>();   // 다형성. 상위클래스인 인터페이스 set으로 해도 가능하다.
		
		
		// String 타입에서 SimpleNumber 타입으로 바꾸면
		set.add(new SimpleNumber(10));
		set.add(new SimpleNumber(20));
		set.add(new SimpleNumber(10));

		// String은 equals("") 문자열 비교해서 true/false 반환
		// 따라서 String 타입은? 입력할 때마다 자동으로 equals로 비교해서 중복체크한다. 
		
		System.out.println("저장된 데이터의 개수: "+set.size());    // 개수가 3개가 출력됨. 
		
		
		// iterator는 순서없이 산정해 있는 set의 데이터들이 순서를 가질 수 있도록 저장
		Iterator<SimpleNumber> itr=set.iterator();   
		
		while(itr.hasNext()){    // hasNext는 커서가 밑으로 내려와 다음번 요소가 있는지 확인 후 true/false 반환
			System.out.println(itr.next());  //커서가 내려와서 다음요소를 반환
		}
	}
}


class SimpleNumber{
	
	int num;
	
	public SimpleNumber(int num){
		this.num=num;
		
	}
	
	public String toString() {
		return String.valueOf(num);   //
	}
	
	
	
	// HashSet의 동등비교과정
	// 1. hash code를 비교해서 같은 hash code를 가진 객체를 기반으로 비교
	// 2. equals 메서드로 비교
	
	@Override
	public int hashCode() {
		return num%3;
	}
	

	@Override
	public boolean equals(Object obj) {  //매개변수는 Object인데, 우리가 비교해야하는 것은 SimpleNumber타입이므로, 
		boolean result=false;
		
		// num의 값을 비교
		// SimpleNumber타입으로 형변환이 되는지 확인 후, 형변환하여 비교해야한다. 
		// 형변환이 안되면 타입이 달라 비교가 안되므로, 동일하지 않은 객체로 판단할 수 있다.
		if(obj instanceof SimpleNumber) {        
			SimpleNumber sm=(SimpleNumber)obj;		
			// SimpleNumber으로 형변환한 Object타입의 obj를 SimpleNumber타입의 sm에 대입해 비교.
			
			result=this.num==sm.num;
		}
		
		return result;
	}


}









