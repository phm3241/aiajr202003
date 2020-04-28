package ex;

public class RuntimeExceptionCase {
	// 다양한 예외처리 예시
	public static void main(String[] args) {
		
		
		// 배열의 인덱스 예외처리
		try {
		int[] arr=new int[3];
		arr[3]=20;
		}catch (IndexOutOfBoundsException e) {
			System.out.println(e.getMessage());
		}
		
		// 형변환 예외처리
		try {
		Object obj=new int[10];
		String str=(String) obj;
		} catch(ClassCastException e) {
			System.out.println(e.getMessage());
		}
		
		// 배열의 크기가 음수일때, 예외처리
		try {
		int[] ar=new int[-10];
		} catch(NegativeArraySizeException e) {
			System.out.println(e.getMessage());
		}
		
		// 참조변수에 null값이 들어있을 때, 예외처리
		try {
		String str=null;
		int len=str.length(); 
		} catch(NullPointerException e) {
			System.out.println(e.getMessage());
		}
		
		
		
		
		
		
	}

}
