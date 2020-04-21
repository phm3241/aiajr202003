package main;

import ex.Member;

public class TestMain1 {

	public static void main(String[] args) {
		
		Member member=new Member();
		
		// 이렇게 정보에 직접 접근하면 오류.
//		System.out.println(member.id);
//		System.out.println(member.name);

		// 메서드로 변수에 접근
		System.out.println(member.getName());
		System.out.println(member.getId());

	}

}
