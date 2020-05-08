package ex;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

public class StringWriter {
	// 파일에 텍스트를 쓰기
	
	
	public static void main(String[] args) throws IOException  {

		// writer는 문자기반의 스트림
		FileWriter fw=new FileWriter("news.txt");	// 기본스트림?
		BufferedWriter bw=new BufferedWriter(fw);	// 필터스트림?

		
		// 3줄짜리 파일생성
		bw.write("손흥민 해병대 입대");
		bw.newLine();  // 개행
		bw.write("손흥민 전역");
		bw.newLine();  // 개행
		bw.write("기사 끝");
		
		bw.close();
		
		System.out.println("기사작성 완료");
		
		
		
		
		
	}

}
