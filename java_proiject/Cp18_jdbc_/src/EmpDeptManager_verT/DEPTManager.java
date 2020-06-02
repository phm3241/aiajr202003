package EmpDeptManager_verT;

import java.sql.Connection;
import java.util.List;

import EMPMainManager.ConnectionProvider;

public class DEPTManager {
	// 핵심로직. 비지니스로직 이라고 함.. 
	
	
	// 리스트 출력하기 위해서는 DeptDao가 반드시 필요하다. 
	DeptDao dao = new DeptDao();

	/////////////////////////////////////////////////////////////////
	// DEPT MANAGER
	/////////////////////////////////////////////////////////////////

	 public void deptManager() {

		System.out.println("DEPT Manager Menu");
		System.out.println("=========================================");
		System.out.println("1. List  2. Insert  3. Search  4. Delete  5. Edit  ");
		System.out.println("=========================================");

		int select = ManageMain.sc.nextInt();

		switch (select) {
		case 1:
			System.out.println("전체 리스트 출력");
			deptList();
			break;
		case 2:
			System.out.println("부서 정보를 입력합니다.");
			deptInsert(); // 사용자의 입력데이터 dept 객체에 담아서 dao insert메서드로 전달
			break;
			
		case 3:
			System.out.println("부서 정보를 검색합니다.");
			deptSearch(); // 사용자가 입력한 이름을 dao search로 전달
			
			break;
		case 4:
			System.out.println("부서 정보를 삭제합니다.");
			deptDelete(); // 이름 또는 부서번호를 dao delete 메서드로 전달.
			// 보통의 삭제는 null값이 있을 수 있기 때문에.. pk(기본키)를 가지고 선택해 삭제하는 것이 좋다. 
			
			break;
		case 5:
			System.out.println("부서 정보를 수정합니다.");
			deptEdit(); // 1. 수정하고자하는 데이터 유무 확인 ㅡ> 2. 사용자로부터 데이터 받아서 전달
			break;

		}

	}
	 
	
	 // 트랜잭션처리를 해줘야함. 
	 // 수정하고자하는 정보가 있는지 확인부터 해야한다. ㅡ> select로 
	 // 수정하고자하는 정보가 없으면, 수정불가
	 public void deptEdit() {
		
		 // 같은 연결정보를 쓸 수 있다. 
		Connection conn = ConnectionProvider.getConnection();
		
		// 트랜잭션이기 때문에 우선 자동커밋을 false로 설정해두고, 
		// 모든절차가 완전히 끝난 후, 개발자가 commit해준다. 
		// (수정하고자 하는 기존정보 있는지확인되고, 기존정보가져오고, 수정정보입력하고의 모든 과정이 끝나야
		// 하나의 처리가 완성되는 트랜잭션)
		// conn.setAutoCommit(false); 처리를 해주지 않으면, 과정마다 커밋될 수있어 잘못되 정보가 될 수 있다. 
		
		conn.setAutoCommit(false); // 기본값은 true : 자동커밋된다. 
		
		
		
		// 1.수정하고자 하는 데이터 유무확인 ㅡ> 2. 사용자로부터 데이터 받아서 전달
		 
		// 사용자 입력정보 변수
		System.out.println("수정하고자 하는 부서 이름 : ");
		ManageMain.sc.nextLine();
		String searchName = ManageMain.sc.nextLine();
	 
		// 1. 수정하고자 하는 데이터 유무확인
		int rowCnt = dao.deptSearchCnt(searchName, conn);
		// System.out.println(rowCnt);
		
		if(rowCnt>0) {
			
			Dept dept = dao.deptSearchName(searchName, conn);
			
			if(dept==null) {
				System.out.println("찾으시는 이름의 정보가 존재하지 않습니다. ");
				return;
			}

			// 사용자 입력정보 변수
			System.out.println("부서 정보를 입력해주세요.");

			System.out.println("부서 번호 : " + dept.getDeptno());
			System.out.println("부서 번호는 수정되지 않습니다.");

			System.out.println("부서 이름 ( " + dept.getDname() + "  ) : ");
			String dname = ManageMain.sc.nextLine();

			System.out.println("지역 ( " + dept.getLoc() + "  ) : ");
			String loc = ManageMain.sc.nextLine();
			
			// 입력정보 객체로 생성하고 dao에 deptEdit() 메서드에 매개변수로 전달
			Dept newDept = new Dept(dept.getDeptno(), dname, loc);
			
			int resultCnt = dao.deptEdit(newDept, conn);
			
			
			if (resultCnt > 0) {
				System.out.println("정상적으로 수정 되었습니다.");
				System.out.println(resultCnt + "행이 수정되었습니다.");
			} else {
				System.out.println("수정이 되지않았습니다. 확인후 재 시도해주세요.");
			}
			
			conn.commit;
			
		} else {
			System.out.println("찾으시는 이름의 정보가 존재하지 않습니다. ");
		}
		 
	 }
	 
	 
	 
	public void deptInsert() {
		
		// 사용자 입력정보 변수
		System.out.println("부서 정보를 입력해주세요.");

		System.out.println("부서번호 : ");
		int deptno = ManageMain.sc.nextInt();
		System.out.println("부서이름 : ");
		ManageMain.sc.nextLine();
		String dname = ManageMain.sc.nextLine();
		System.out.println("지역 : ");
		String loc = ManageMain.sc.nextLine();
		
		// 사용자에게 입력받은 정보를 dept 객체로 생성
		Dept dept = new Dept(deptno, dname, loc);
		
		// 생성한 객체를 dao에 전달 ㅡ>  데이터베이스처리
		int resultCnt = dao.deptInsert(dept);
		
		if (resultCnt > 0) {
			System.out.println("정상적으로 입력 되었습니다.");
			System.out.println(resultCnt + "행이 입력되었습니다.");
		} else {
			System.out.println("입력이 되지않았습니다. 확인후 재 시도해주세요.");
		}
		
	}
	 
	 
	public void deptDelete() {
		
		System.out.println("삭제하고자 하는 부서이름 : ");
		ManageMain.sc.nextLine();
		String searchName = ManageMain.sc.nextLine();
		
		int resultCnt = dao.deptDelete(searchName);

		if (resultCnt < 1) {
			System.out.println("삭제할 정보가 검색 결과가 없습니다.");
		} else {
			System.out.println(resultCnt + "행이 삭제 되었습니다.");
		}

		System.out.println("=================================");
	}
 
	 
	 
	 
	 
	 
	 
	 
	 
	
	public void deptSearch() {
		
		// 사용자 입력정보 변수

		System.out.println("삭제하고자 하는 부서이름 : ");
		ManageMain.sc.nextLine();
		String searchName = ManageMain.sc.nextLine();
		
		List<Dept> list = dao.deptSearch(searchName);
		
		System.out.println("검색결과");
		System.out.println("======================================");
		
		for(Dept d : list) {
			System.out.printf("%5s", d.getDeptno()+"\t");
			System.out.printf("%12s", d.getDname()+"\t");
			System.out.printf("%12s", d.getLoc()+"\n");
		}
		System.out.println("======================================");
	}
	 
	 
	 
	 // 데이터 출력이 핵심인 메서드.. 
	public void deptList() {
		
		
		// DeptDao의 메서드 deptList()로 반환되는 리스트를 담는다. 
		List<Dept> deptList = dao.deptList();
		
		if(deptList!=null && !deptList.isEmpty()) {
			
			//리스트를 반복문으로 출력. 
			for(int i=0; i<deptList.size(); i++) {
				System.out.printf("%5s", deptList.get(i).getDeptno()+"\t");
				System.out.printf("%12s", deptList.get(i).getDname()+"\t");
				System.out.printf("%12s", deptList.get(i).getLoc()+"\n");
			}
		} else {
			System.out.println("입력된 데이터가 없습니다.");
		}
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
}