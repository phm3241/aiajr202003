package ex;

public class Member {

		// 보통은 변수는 private으로 하고,
		// 메서드는 public으로 하여 메서드 통해서 변수에 접근하도록 구성.
	
		private String name;
		private String id="cool";
		
	
		// getter / setter 메서드 : 컨트롤+시프트+S 단축키로 자동입력가능.
		// getter메서드는 값을 참조해서 반환하는 기능.
		// stter메서드는  값을 받아서 변수에 저장하는 기능. 
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		
//		Member(){   // default 생성자
//		}
		

		
		
}
