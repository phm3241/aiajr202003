package ex;

public class ArrayMaxMin {

	public static int miniValue(int[] arr) { // 최소값 반환
		
		int min=0;
		
		for(int i=0; i<arr.length; i++) {
			if(arr[i]<=arr[0]) {
				min=arr[i];
				continue;
			}else;
				min=arr[0];
				continue;
			
		}
		return min;
	}
		
		
	public static int maxValue(int[] arr) {  // 최대값 반환
		
		int max=0;
		
		for(int i=0; i<arr.length; i++) {
			if(arr[0]<=arr[i]) {;
				max=arr[i];
				continue;
			}else;
				max=arr[0];
				continue;
		}
		return max;
	}
}