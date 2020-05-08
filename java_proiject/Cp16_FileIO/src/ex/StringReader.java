package ex;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class StringReader {
	// 파일안에 있는 텍스트를 읽어오기 
	
	
	public static void main(String[] args) throws IOException {

		
		FileReader fr=new FileReader("news.txt");
		BufferedReader br=new BufferedReader(fr);	// 필터스트림?
		
		String str=null;
		
		while(true) {
			str=br.readLine();  // 한줄씩 읽기
			if(str==null) {
				break;
			}
			System.out.println(str);
		}
		br.close();
		
	}

}
