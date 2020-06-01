package EMPMainManager;

import java.util.Scanner;

public class EmpMain {

	public static void main(String[] args) {
		
		Scanner kb = new Scanner(System.in);

	
		System.out.println("EMP MAIN NENU");
		System.out.println("--------------------------------------------------");
		System.out.println("  1. 사원관리 프로그램(emp)    2. 부서관리 프로그램(dept)");
		System.out.println("--------------------------------------------------");
		
		System.out.println("관리 프로그램을 선택하세요.");

		int select=kb.nextInt();
		kb.hasNextLine();
		
		
		switch(select) {
		
		case 1: empManager();
		break;
		case 2: deptManager();
		break;
		}

	}
	
	
	// 사원관리 프로그램 메인 
	public static void empManager() {
	
		EmpManager em = new EmpManager();
		
		System.out.println(" 사원관리 프로그램 _EMP MANAGER NENU ");
		System.out.println("--------------------------------------------------");
		System.out.println("  1. 입력	\t\2. 수정\t 3. 삭제\t4. 리스트\t5. 검색");
		System.out.println("--------------------------------------------------");
		
		System.out.println("사용할 기능을 선택하세요.");

		int select=em.kb.nextInt();
		em.kb.hasNextLine();
		
		
		switch(select) {
		
		case 1: em.empInsert();
		break;
		case 2: em.empUdate();
		break;
		case 3: em.empDelete();
		break;
		case 4: em.empPrint();
		break;
		case 5: em.empSearch();
		break;
		}
	}
	
	
	// 부서관리 프로그램 메인
	public static void deptManager() {
	
		Scanner kb = new Scanner(System.in);
	
		
		
	}
}


	