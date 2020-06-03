package PhoneBook_Ver07_JDBC;

import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.List;
import java.util.Scanner;


public class PbUnivManager {


	//System.out.println("1. List  2. Insert  3. Search  4. Delete  5. Edit  ");
	
	PbUnivDao dao = PbUnivDao.getInstance();

		
	public PbUnivManager() {
	}


	public void univList() {
		
		List<PbUniv> univList = new ArrayList<>();
		univList = dao.univList();
		
		System.out.println("대학친구 전체리스트");
		System.out.println("--------------------------------------------------------");
		
		for(int i=0; i<univList.size(); i++) {
			
			System.out.printf("%5s",univList.get(i).getName()+"\t");
			System.out.printf("%12s",univList.get(i).getPhoneNumber()+"\t");
			System.out.printf("%12s",univList.get(i).getAddress()+"\t");
			System.out.printf("%12s",univList.get(i).getEmail()+"\t");
			System.out.printf("%12s",univList.get(i).getMajor()+"\t");
			System.out.printf("%12s",univList.get(i).getGrade()+"\n");
		}

		System.out.println("--------------------------------------------------------");
	}
		
		
	
	public void univInsert() {

		// 사용자 입력정보 받기
		System.out.println("대학친구 정보 입력을 시작합니다.");

		System.out.println("친구의 이름 : ");
		String name = PhoneBookMain.kb.nextLine();

		System.out.println("친구의 전화번호 : ");
		String phoneNumber = PhoneBookMain.kb.nextLine();
		
		System.out.println("친구의 주소 : ");
		String address = PhoneBookMain.kb.nextLine();

		System.out.println("친구의 이메일 : ");
		String email = PhoneBookMain.kb.nextLine();
		
		System.out.println("친구의 전공 : ");
		String major = PhoneBookMain.kb.nextLine();
		
		System.out.println("친구의 학년 : ");
		int grade = PhoneBookMain.kb.nextInt();
		PhoneBookMain.kb.nextLine();
		
		
		// 사용자 입력정보 ㅡ> univ 객체로 생성
		PbUniv univ = new PbUniv(name, phoneNumber, address, email, major, grade);
 
		
		// 생성한 univ객체 ㅡ> dao에 매개변수로 전달
		// dao에서 데이터 입력처리 후, 처리한 행개수 반환
		int resultCnt = dao.univInsert(univ);
		
		
		// 입력결과출력
		if (resultCnt > 0) {
			System.out.println("정상적으로 입력되었습니다.");
			System.out.println(resultCnt+"개 행 입력되었습니다.");
		} else {
			System.out.println("정상적으로 입력되지 않았습니다. 확인 후 다시 입력해주세요.");
		}
		
	}
	
	
	
	public void univSearch() {
		
		// PbUniv타입 리스트 생성
		List<PbUniv> univList = new ArrayList<>();
		
		System.out.println("찾으시는 대학친구 이름을 입력해주세요.");
		String searchName = PhoneBookMain.kb.nextLine();
		
		
		univList = dao.univSearch(searchName);
		
		
		if(univList != null) {
			for(int i=0; i<univList.size(); i++) {
				System.out.printf("%5s", univList.get(i).getName()+"\t");
				System.out.printf("%12s", univList.get(i).getPhoneNumber()+"\t");
				System.out.printf("%12s", univList.get(i).getAddress()+"\t");
				System.out.printf("%12s", univList.get(i).getEmail()+"\t");
				System.out.printf("%12s", univList.get(i).getMajor()+"\t");
				System.out.printf("%12s", univList.get(i).getGrade()+"\n");
			}
			
			
		} else {
			System.out.println("찾으시는 검색결과가 없습니다. 확인 후 다시 검색해주세요. ");
		}
	}
	
	
	
	public void univDelete() {
		
		System.out.println("삭제할 대학친구의 이름을 입력해주세요.");
		String searchName = PhoneBookMain.kb.nextLine();
		
		// 삭제할 이름 입력변수 ㅡ> dao에 매개변수로 전달
		// dao에서 데이터 삭제처리 후, 처리한 행개수 반환
		int resultCnt = dao.univDelete(searchName);
		
		// 입력결과출력
		if (resultCnt > 0) {
			System.out.println("정상적으로 삭제되었습니다.");
			System.out.println(resultCnt+"개 행 삭제되었습니다.");
		} else {
			System.out.println("정상적으로 삭제되지 않았습니다. 확인 후 다시 입력해주세요.");
		}
	}
	
	
	
	public void univEdit() {
		
		
	}


} //class end