package test01;

import java.util.Arrays;

public class test02 {

	public int[] solution(int[] array, int[][] commands) {
		
		// return 할 배열
        int[] answer = new int[commands.length];
        
        // 정렬하고 담을 배열
        int[] array2 = {};

        
        
        // 1. array에서 commands의 첫번째 원소 중 첫번째 요소~ 두번쨰요소까지 자르기
        // 2. 자른 array를 정렬하기
        // 3. 정렬한 array의 commands의 처번쨰 원소중 세번째 요소 번째 반환하기
        // 4. 반환한 요소 answer 배열에 넣기 
        
        
        
        for(int i=0; i<commands.length; i++) {
        	for(int j=0; i<commands[i].length; j++) {
        		
        		// 1. 배열 자르기 
        		// 배열을 해당 인덱스로 자르는 방법이 이것밖에 없나?? 
        		for(int a=commands[i][0]; a<=commands[i][1]; a++) {
        			
        			// 자른 배열을 array2에 요소로 넣기는 어떻게 하지..?
        			for(int b=0; b<=(commands[i][1] - commands[i][0]); b++) {
        				array2[b]=array[a];
        				
        			}
        			
        			// 2. 정렬하기
        			Arrays.sort(array2);
        			
        			
        			// 3. 해당 인덱스의 요소 찾기 
        			int num = array2[commands[i][2]];
        			
        			
        			// 4. 반환한 요소 answer 배열에 넣기는 어떻게 하지..?
        			
        			
        			
        		}
        		
        	}
        	
        	
        	
        	
        }
        
        
        
        return answer;
        
        
    }
	
}




