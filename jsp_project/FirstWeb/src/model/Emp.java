package model;

// 데이터베이스의 데이터 담는 객체 : 테스트용
public class Emp {
	
	private int empno;
	private String ename;
	private int sal;
	private String job;
	
	public Emp(int empno, String ename, int sal, String job) {
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
		this.job = job;
	}
	
	public Emp() {
	}

	
	
	
	
	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public int getSal() {
		return sal;
	}

	public void setSal(int sal) {
		this.sal = sal;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	
	
	@Override
	public String toString() {
		return "Emp [empno=" + empno + ", ename=" + ename + ", sal=" + sal + ", job=" + job + "]";
	}
	
	
	
	
	
}
