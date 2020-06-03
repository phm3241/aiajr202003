package EmpDeptManager_verT;

public class Dept {
	
	// 구조를 deptManager(핵심로직, 비지니스 처리?)와 deptDao(데이터처리만)로 변경했기 때문에
	// 두 구조 사이에서 데이터를 주고 받기 위해, 객체를 만들어야한다. 
	// 이런 객체를 VO, DTO라고 하고, 이 두 객체를 JavaBeans라고 한다.?
	// VO : Value Object 읽기전용(read only)
	// DTO : Data Transfer 읽기쓰기전용
	
	// 변수는 반드시 private처리를 해야한다. ?	
	private int deptno;
	private String dname;
	private String loc;

	
	// default constructor는 필수이고, 
	public Dept() {
	}
	
	
	// 매개변수 생성자는 선택 : 프로그래머가 객체를 사용하기 위해서 선택적으로 생성
	public Dept(int deptno, String dname, String loc) {
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
	}

	
	
	// 변수를 private처리했으므로 getter/setter
	public int getDeptno() {
		return deptno;
	}

	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}

	public String getDname() {
		return dname;
	}

	public void setDname(String dname) {
		this.dname = dname;
	}

	public String getLoc() {
		return loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	
	
	// 확인용으로 toString활용
	// DB에서 정상적으로 정보가 들어왔는지. 사용자가 입력한 정보가 제대로 되었는지?
	@Override
	public String toString() {
		return "Dept [deptno=" + deptno + ", dname=" + dname + ", loc=" + loc + "]";
	}
}
