package ex_200421;

public class ArrayMax {
	
	public static int maxValue(int[] arr) {  // 최대값 반환
	
		int max=arr[0];
	
		for(int i=1; i<arr.length; i++) {
			if(max<arr[i]);
				max=arr[i];
		}
		return max;
	}
}
		
