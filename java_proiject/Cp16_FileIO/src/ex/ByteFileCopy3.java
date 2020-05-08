package ex;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class ByteFileCopy3 {

	public static void main(String[] args) {
		// 파일을 카피하는 방법 2 : 배열만들어서
		
		InputStream in = null;
		OutputStream out = null;

		int copyByte = 0;
		int readLen;				// 사이즈
		byte[] buf=new byte[1024];	// 배열만들기

		try {

			// 원본 파일의 데이터를 프로그램안으로 가져와야한다.
			// => InputStream 인스턴스 생성
			in = new FileInputStream("Git_iotest.exe");

			// 새로운 파일을 생성
			// => OutputStream 인스턴스 생성
			out = new FileOutputStream("Git_iotest_copy2.exe");

			while (true) {
				
				// 우리가 전달받은 배열을 크기에 넣어서 줌?
				readLen = in.read(buf);

				if (readLen == -1) {
					break;
				}
				
				// 배열 buf의 0번지 부터 배열의 크기 readLen까지 반복
				out.write(buf,0,readLen);
				copyByte+=readLen;

			}


		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				in.close();
				out.close();

			} catch (IOException e) {
				e.printStackTrace();
			}

		}
		System.out.println("복사된 바이트 크기 : " + copyByte);

	}

}