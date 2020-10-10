package test01;

public class Solution {
	
	String p = "PM 11:59:59";
	String n = "1";
	
	public String solution(String p, int n) {
        // String p 는 현재시간. 오전오후 am. pm으로 표시. 12시간 기준 표시
        // n은 n초 후         
        
		int num = 0;
		
		if(p.indexOf("P")>0) {
			num = 120000;
		}
		
		p.replace(":", "");
		p.substring(3);
		System.out.println(p);
        String answer = null;
        
        
        
        
        return answer;
    }
	
	
}
