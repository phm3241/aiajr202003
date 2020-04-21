package ex_200421;

public class ArrayMin {

	public static int miniValue(int[] arr) { // 최소값 반환
		
		int min=arr[0];
		
		for(int i=1; i<arr.length; i++) {
			if(arr[i]<min) 
				min=arr[i];
		}
		return min;
	}
}
	
		
