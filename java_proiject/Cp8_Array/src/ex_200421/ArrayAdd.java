package ex_200421;

/*문제 2.
다음 메서드는 int형 1차원 배열에 저장된 값을 두 번째 매개변수로 전달될 값의 크기만큼 전부 증가시킨다.
public static void addOneDArr(int[] arr, int add){
for (int i=0, i<arr.length; i++)
arr[i] +=add;
}
이 메서드를 기반으로(이 메서들르 호출하는 형태로)int형 2차원 배열에 저장된 값 전부를 증가시키는 메서드를 다음의 형태로 정의하자.
public static void addOneDArr(int[][] arr, int add) { . . . . . }
단 위 메서드는 2차원 배열의 가로, 세로 길이에 상관없이 동작해야 하며, 위의 메서드가 제대로 동작하는지 확인하기 위한 main 메서드도 함께 정의해야 한다.
*/

public class ArrayAdd {
	
	// 메서드 : int형 2차원 배열에 저장된 값 전부를 증가
	public static int[][] addOneDArr(int[][] ar, int add){ 
		for(int i=0; i<ar.length; i++)
			for(int j=0; j<ar[i].length; j++)
				ar[i][j]+=add;
			return ar;
	}

	// 메인메서드
	public static void main(String[] args) { 
		
		// 2차 배열 선언, 생성 
		int[][] arr=new int[3][4];
		
		// 3행*4열짜리 배열에 값넣기
		for(int i=0; i<arr.length; i++) 
			for(int j=0; j<arr[i].length; j++)
				arr[i][j]=i+j;
		for(int i=0; i<arr.length; i++) 
			for(int j=0; j<arr[i].length; j++)
				System.out.print(arr[i][j]+" ");
		
		System.out.println();

		// 메서드 호출 
		arr=addOneDArr(arr, 5);
		for(int i=0; i<arr.length; i++) {
			for(int j=0; j<arr[i].length; j++)
				// 배열의 모든 값에 값이 더해졌는지 확인출력.
				System.out.print(arr[i][j]+" ");
		}
	}
}

