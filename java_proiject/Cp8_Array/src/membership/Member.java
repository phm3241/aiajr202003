package membership;

// 회원정보(아이디, 이름, 이메일)를 저장하기 위한 클래스 생성 
// 변수, 메서드, 생성자
public class Member {
	
	// 변수
	String memberId; 
	String memberName;
	String memberEmail;
	
	// 생성자
//	Member(String memberId, String memberName, String memberEmail){
//		memberId=memberId;
//		memberName=memberName;
//		memberEmail=memberEmail;		
//		// 매개변수를 인스턴스변수와 같은 이름으로 쓰게되면 지역변수가 된다. 
	    // 지역변수가 지역변수를 가르키게되어 같은값을 가르키게 된다. 
		// 따라서 아래처럼 this를 써서 지연변수가 인스턴스 변수를 가르키도록 한다. 
//	}
	
	Member(String memberId, String memberName, String memberEmail){
		this.memberId=memberId;
		this.memberName=memberName;
		this.memberEmail=memberEmail;		

	}
	
	// toString은 오버라이드 되서 디버깅 용으로 사용.
	// 클래스 안에 어떤 내용이 있는지 확인해서 문자열로 출력해주는 메서드이다. 
	// 모든 클래스에는 Object라는 클래스를 상속받는다. 
	// Object클래스 안에는 .tostring이 있다. 따라서 모든 클래스에는 .tostring을 가지고 있다. 
	@Override
	public String toString() {
		return "Member [memberId=" + memberId + ", memberName=" + memberName + ", memberEmail=" + memberEmail + "]";
	}

	// 메서드
	void showInfo() {
		System.out.println("회원정보");
		System.out.println("아이디 : "+this.memberId);
		System.out.println("이름 : "+this.memberName);
		System.out.println("이메일 : "+this.memberEmail);
	}
	

}
