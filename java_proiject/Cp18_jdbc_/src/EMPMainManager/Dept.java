package EMPMainManager;

public class Dept {
	
	
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
