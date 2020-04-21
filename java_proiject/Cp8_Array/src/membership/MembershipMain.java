package membership;

//회원정보(아이디, 이름, 이메일)*5개 ㅡ> 배열에 저장 
//ㅡ> Member Class 생성 ㅡ> Member 타입
//회원정보를 리스트로 출력

public class MembershipMain {

	public static void main(String[] args) {
		
		// 회원 정보 5개를 저장할 수 있는 배열을 생성
		// Member 타입의 인스턴스의 참조값을 저장하는 메모리공간
		// Member m1, m2, m3, m4, m5
		Member[] members=new Member[5];     
		members[0]=new Member("rm","김남준","rm@gmail.com");   //Member 타입의 인스턴스 주소를 넣어줘야함
		members[1]=new Member("jin","김석진","jin@gmail.com");   //Member 타입의 인스턴스 주소를 넣어줘야함
		members[2]=new Member("suga","민윤기","suga@gmail.com");   //Member 타입의 인스턴스 주소를 넣어줘야함
		members[3]=new Member("jhope","정호석","jhope@gmail.com");   //Member 타입의 인스턴스 주소를 넣어줘야함
		members[4]=new Member("jimin","박지민","jimin@gmail.com");   //Member 타입의 인스턴스 주소를 넣어줘야함
		// members는 객체자체를 가지고 있는게 아니라 참조변수이다! 중요. 
		
//		members[0].showInfo();
//		members[1].showInfo();
//		members[2].showInfo();
//		members[3].showInfo();
//		members[4].showInfo();
		// ㅡ> 아래처럼 for문으로 출력방법 바꾸기

		for(int i=0; i<members.length; i++) {
			System.out.println(members[i]);  
			System.out.println("--------------------------");  
			// 참조변수 전달하게되면, tostring이 자동으로되서 문자열 출력
		}
		
		for(int i=0; i<members.length; i++) {
			members[i].showInfo();
			System.out.println("--------------------------");  
		}
		
		
		
		
		// System.out.println(member);   // member.tostring() 이 호출, 디버깅용으로 활용, 확인용
		// 모든 클래스에는 Object라는 클래스를 상속받는다. 
		// Object클래스 안에는 .tostring이 있다. 따라서 모든 클래스에는 .tostring을 가지고 있다. 
		
		
		

	}

}
