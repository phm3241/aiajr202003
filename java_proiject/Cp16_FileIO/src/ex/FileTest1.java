package ex;

import java.io.File;

public class FileTest1 {

	public static void main(String[] args) {

		// File myFile = new File("c:\\myJava\\test.txt");
		
		//앞쪽에는 경로, 뒤쪽에는 파일이름. 이렇게 쓸수도 있다.
		// File myFile = new File("c:\\myJava","test.txt");   
		
		// File.separator로 운영체제에 맞춰서 알아서 역슬래시 또는 원화표시로 자동 변환된다. 
		// 운영체제가 달라서 생길 수 있는 문제 방지. 안전한 방법. 
		File myFile = new File("c:"+File.separator+"myJava"+File.separator+"test.txt");   
		
		
		// 파일 존재유무 확인
		if(myFile.exists()==false) {
			System.out.println("파일이 존재하지 않습니다.");
			return;
		}else {
			System.out.println("파일이 존재합니다.");
		}
		
		// 새로운 폴더 경로 생성
		File reDir = new File("c:\\yourJava");  // 경로만 만들어준 것. 
		reDir.mkdir();  // 디렉터리 생성. 실제로 폴더를 생성해 주는 메서드 
		
		// 새로운 파일 경로 생성
		File newFile = new File(reDir, "new.txt"); // 경로만 만들어준 것.
		myFile.renameTo(newFile);   // myFile을 뒤에로는 새로운 경로인 newFile로 이동한다. 
		
		//myFile라는 파일을 새로운 경로인 newFile로 이동
		
		
		if(newFile.exists()) {
			System.out.println("파일이동 성공");
		}else {
			System.out.println("파일이동 실패");
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
