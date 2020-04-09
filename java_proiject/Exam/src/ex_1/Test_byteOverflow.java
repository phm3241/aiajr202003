package ex_1;

public class Test_byteOverflow {
	
	public static void main(String[] args) {
	
		
		byte b = 0;  // byte타입변수 b 선언. 0으로 초기화
		int i = 0;   // int타입변수 i 선언. 0으로 초기화 

		
		// for 반복문. x가 270보다 작을때까지 x++ 1씩 증가하는 증감연산자
 		for(int x=0; x<270;x++) {

 			
 			
		System.out.print(b++);     
		// byte타입변수 b가 초기값 0부터 1씩 증감하여 270이하까지 반복된 결과 출력
		// byte의 표현범위(-128~127)가 오버플로우 되어, 
		// 벗어난 범위에서는 byte 범위의 음수부터 결과값이 나옴.
		
		System.out.print("\t");    
		// tab을 출력한다.
				
		System.out.println(i++);   
		// int타입변수 i가 초기값 0부터 1씩 증감하여 270이하까지 반복된 결과 출력  	
		
		}
	}
}
