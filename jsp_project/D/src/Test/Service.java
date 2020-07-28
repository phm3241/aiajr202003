package Test;

public class Service {

	
	// Service 클래스는 Dao 클래스에 의존한다.
	// 직접생성하는 코드는 의존성이 높은 코드이다. 
	// Dao dao = new Dao();
	
	
	
	
	// ★ 의존성을 낮추는 코드패턴 기억해두기 
	// Dao 인터페이스에 아무코드가 없어도, 구현이 가능하다.. ==> 의존성을 낮춤.의존성을 낮추는 코드 
	// 사용자가 설정하면.. 스프링이 주입해준다?
	
	// Dao을 interface로 ㅡ> MemberDao, MemberDao2
	// 코드가 바뀌면 연관된 것들을 수정해주어야하는 번거로움이 없어진다. 
	
	Dao dao;
	MemberDao memberDao;
	
	public void setDao() {
		this.dao = dao;
	 }
	
	public void setDao(MemberDao dao) {
		this.dao = dao;
	}
	
	public void print() {
		dao.print();
	}
	
	
	
	
	
	
	
	
	
}
