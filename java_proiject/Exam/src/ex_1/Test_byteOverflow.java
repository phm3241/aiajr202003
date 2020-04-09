package ex_1;

public class Test_byteOverflow {
	
	public static void main(String[] args) {
	
		
		byte b = 0;
		int i = 0;
		
		//for 반복문. x가 270보다 작을때까지.		
		//x++ 1씩 증가하는 증감연산자
 
		for(int x=0; x<270;x++) {
			
		System.out.print(b++);
		System.out.print("\t");
		System.out.println(i++);	
		
		//byte의 표현범위가 오버플로우로 벗어남. 
		
		}
	}
}
