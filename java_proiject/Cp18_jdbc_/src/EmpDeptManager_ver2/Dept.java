package EmpDeptManager_ver2;

public class Dept {

	// 구조를 deptManager(핵심로직, 비지니스 처리?)와 deptDao(데이터처리만)로 변경했기 때문에
	// 두 구조 사이에서 데이터를 주고 받기 위해, 객체를 만들어야한다. 
	// 이런 객체를 VO, DTO라고 한다. 
	// VO : Value Object 읽기전용(read only)
	// DTO : Data Transfer 읽기쓰기전용
	
	private int deptno;
	private String dname;
	private String loc;

	
	public Dept() {
	}
	
	public Dept(int deptno, String dname, String loc) {
		super();
		this.deptno = deptno;
		this.dname = dname;
		this.loc = loc;
	}
	
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
	
	
	
	
	
	
}
