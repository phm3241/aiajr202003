package ex;

public class IEU_Grade {

	public static void main(String[] args) {
		
		int score = 99;
		
		String grade = "";     // A+, A, A-, B+, B, B-, C
		

		// 100~98 : A+, 97~94 : A, 93~90 : A-
		// if문 중첩해서 작성
		if(score>=90) {
			grade = "A";
			
			if(score>=98) {
				// grade = grade + "+";
				grade += "+";  
			} else if(score<94) {
				// grade = grade +"-";
				grade += "-";
			}
		
		} else if (score >=80) {  // 90 > score >= 80 이렇게 쓸 필요가 없다. 
			grade = "B";
			if(score>=88) {
				grade += "+";  
			} else if(score<88) {
				grade += "-";
		} else {
			grade ="C";
		}

	}
		System.out.println(grade);
		
}
		
	
	
	
//		if (score >= 98 && score <=100) {
//			grade = "A+";
//		}	
//		if (score >= 94 && score <=97) {
//			grade = "A";
//		}	
//		if (score >= 93 && score <=90) {
//			grade = "A-";
//		}
	

}
