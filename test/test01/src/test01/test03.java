package test01;

import java.util.Arrays;
import java.util.HashSet;

// 프로그래머스 : 해시. 완주하지 못한 선수
public class test03 {

	    public String solution(String[] participant, String[] completion) {
	        
	        String answer = "";
	        
	        //String[] participant2 = {"leo", "kiki", "eden"}; 
			//String[] completion2 = {"eden", "kiki"};
			
			// 두개의 배열 합치기
			// 두 배열을 하나로 담을 배열변수 선언
			String[] temp = new String[participant.length + completion.length];
			temp.
			
//			System.arraycopy(participant, 0, temp, 0, participant.length);
//			System.arraycopy(completion, 0, temp, participant.length, completion.length);
			
			// for(int i=0; i<temp.length; i++) {
			// 	System.out.println(temp[i]);
			// };
			
	        // HashSet으로 중복제거
			temp = new HashSet<String>(Arrays.asList(temp)).toArray(new String[0]);
			 
			for(String a:temp){
			    System.out.println(a); 
			};
	        
	        
	        return temp.toString();
	    };
	};

