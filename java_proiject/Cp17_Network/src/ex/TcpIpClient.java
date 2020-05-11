package ex;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.net.UnknownHostException;

public class TcpIpClient {

	public static void main(String[] args) {

		try {
			Socket socket = new Socket("192.168.0.114",7777);
			
			InputStream in=socket.getInputStream();
			DataInputStream din=new DataInputStream(in);
			
			System.out.println("서버 : " + din.readUTF());
			
			System.out.println("연결을 종료합니다.");
			
			din.close();
			socket.close();
			
		} catch (UnknownHostException e) { //7777이 등록되어있지 않을 수도 있으니까 예외처리
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
