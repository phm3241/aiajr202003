package ex;

import java.util.Iterator;
import java.util.TreeSet;

public class Person implements Comparable<Person>{

	String name;
	int age;
	
	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	
	void showData() {
		System.out.println("이름: "+this.name+"나이:"+this.age);
	}

	@Override
	public int compareTo(Person o) {

		int result =0;
//		
//		if(this.age>o.age) {
//			result=1;           // 양수 (숫자는 의미가 없다)  내림차순정렬이 된다.  음수로 바꾸고 아래를 양수로 바꾸면 오름차순이 된다.
//		}else if(this.age<o.age)
//			result=-1;  		// 음수 
//		else {
//			result=0;
//		}
//			
//		return result;

		// if문 쓰지 않고 연산을 짫게 처리할 수도 있다. 
		result=(this.age-o.age)*-1;
		result=this.age-o.age;
		return result;
	}
	


	public static void main(String[] args) {
		 TreeSet<Person> tree=new TreeSet<>();
		 
		 tree.add(new Person("Son", 27));
		 tree.add(new Person("King", 30));
		 tree.add(new Person("Lee", 20));
	 
		 Iterator<Person> itr=tree.iterator();
		 
		 while(itr.hasNext()) {
			 itr.next().showData();   //itr.next() Person의 참조값이므로, 
		 }
	}
}























