package EMPMainManager;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;

public class DeptManager {
	// 부서관리 프로그램
		
		DeptDao dao = new DeptDao();
	
		public void deptManager() {
			
		}
		
		
		public void deptList() {
		
			List<Dept> deptList = dao.deptList();
			
			if(deptList !=null && !deptList.isEmpty()) {
				
				for(int i=0; i<deptList.size(); i++) {
					System.out.printf("%5d", deptList.get(i).getDeptno()+"\t");
					System.out.printf("%12s", deptList.get(i).getDname()+"\t");
					System.out.printf("%12s", deptList.get(i).getLoc()+"\n");
					
				}
				
		}
		
		
		
		while(true) {
		System.out.println(" 부서관리 프로그램 _DEPT MANAGER NENU ");
		System.out.println("----------------------------------------------------------");
		System.out.println("  1. 입력	ㅣ 2. 수정	ㅣ 3. 삭제	ㅣ 4. 리스트 ㅣ 5. 검색 ㅣ 6. 메인으로");
		System.out.println("----------------------------------------------------------");

		System.out.println("메뉴를 선택하세요.");

		
			int select = 0;
	
			try {
				select = kb.nextInt();
	
				// 정상범위 1~6
				if (!(select >= 1 && select <= 6)) {
					BadNumberException e = new BadNumberException("잘못된 메뉴입력입니다.");
	
					// 강제적인 예외발생
					throw e;
				}
	
			} catch (InputMismatchException e) {
				System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
				continue;
			} catch (BadNumberException e) {
				System.out.println("메뉴범위를 벗어난 숫자입력입니다. \n 확인하시고 다시 입력해주세요");
				continue;
			} catch (Exception e) { // 생각치 못한 오류발생이 있을 수 있기 때문에.
				System.out.println("잘못된 메뉴입력입니다. \n 확인하시고 다시 입력해주세요");
				continue;
			} finally {
				kb.nextLine();
				// 버퍼발생을 없애주기 위해, finally에 넣어 예외가 발생하든 안하든 실행됨.
			}
			

		switch (select) {

		case 1:
			dm.deptInsert();
			break;

		case 2:
			dm.deptUdate();
			break;

		case 3:
			dm.empDelete();
			break;

		case 4:
			dm.deptPrint();
			break;

		case 5:
			dm.deptSearch();
			break;
		case 6:
			break;
		} //switch end
		break;
	} //while end
		
	
		
} // deptManager() end



	

} // class end 
