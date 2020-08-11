package encrypt;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

public class EncTestMain {

	public static void main(String[] args) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
		
		String str="Hello~Java";
		
		// 단방향 암호화 객체생성 : SHA-256
		Sha256 sha256 = new Sha256();
		
		String encStr = sha256.encrypt(str);
		
		System.out.println("평문 : "+ str);
		System.out.println("SHA-256 : " + encStr);
		System.out.println(sha256.encrypt("1"));
		System.out.println(sha256.encrypt("1"));
		System.out.println(sha256.encrypt("1234568abcdef"));
		System.out.println(sha256.encrypt("1").length());
		
		
		// 양방향 암호화 객체 : AES 
		// key : 16자리
		String key ="0000000000000001";
		String key2 ="0000000000000002";
		AES256Util aes256Util = new AES256Util(key);
		AES256Util aes256Util2 = new AES256Util(key2);
		
		System.out.println("============================================");
		
		// 암호화
		System.out.println("평문 : "+ str);
		System.out.println("AES를 이용한 암호화 : "+aes256Util.encrypt(str));
		System.out.println("AES를 이용한 암호화 : "+aes256Util2.encrypt(str));
		
		System.out.println("============================================");
		
		
		// 복호화
		String plainStr1 = aes256Util.decrypt(encStr);
		String plainStr2 = aes256Util.decrypt(encStr); 
		//  잘못된 결과 key를 잘못쓰면 복호화를 하지 못함. ㅡ> String plainStr2 = aes256Uti2.decrypt(encStr); 이렇게 맞는 키를 써야한다. 
		
		System.out.println("AES를이용한 복호화 : " + plainStr1); 
		System.out.println("AES를이용한 복호화 : " + plainStr2);
		
		
	}
}
