package ex;

public class TestMain2 {

	public static void main(String[] args) {
		
		Member member=new Member();
		
//		System.out.println(member.id);
//		System.out.println(member.name);
		
		System.out.println(member.getName());
		System.out.println(member.getId());
		
		Singleton s= Singleton.getInstance();
		s.print();

	}

}
