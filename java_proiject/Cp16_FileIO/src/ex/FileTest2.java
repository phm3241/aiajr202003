package ex;

import java.io.File;

public class FileTest2 {

	public static void main(String[] args) {

		// 폴더 경로 객체 생성
		File myDir = new File("c:\\myJava");
		
		// 결로에 있는 리스트 파일이름을 배열에 담기
		String[] fName=myDir.list();
		
		// 파일이름이 담긴 배열 출력하여 확인
		for(int i=0; i<fName.length; i++) {
			System.out.println(fName[i]);
		}
		
		
		// 파일객체로 만들어서 반환? 
		File[] files = myDir.listFiles();
		
		for(int i=0; i<files.length; i++) {
			if(files[i].isDirectory()) {
				System.out.print("[DIR]\t");
			} else {
				System.out.print("[FILE]\t");
			}
			System.out.println(files[i].getName());
			
		}
	
	
	
	}
} // class end


