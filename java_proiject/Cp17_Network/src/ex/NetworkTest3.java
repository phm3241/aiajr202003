package ex;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

public class NetworkTest3 {

	public static void main(String[] args) {
		
		URL url=null;
		String address = "https://cafe.naver.com/aiajr202003";
		
		BufferedReader input=null;
		String line="";
		
		try {
			url=new URL(address);
			
			input =new BufferedReader(new InputStreamReader(url.openStream()));
			//.openStream() url 주소에서 읽어오는 것? 
			
			
			while(true) {
				line=input.readLine(); //한줄한줄 읽어오는 것.
				if(line==null) {
					break;
				}
				System.out.println(line);
			}
		input.close();
		
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
	}

}
