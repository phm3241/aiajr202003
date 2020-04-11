package op_ex_200410;

public class Test1 {

	public static void main(String[] args) {
		
		/* 연산챕터_문제1.
		   int 형 변수 num1, num2, num3가 각각 10,20,30 으로 초기화 되어 있다.
		      다음문장을 실행하면 각각 변수에는 어떠한 값이 저장되겠는가?
		   num1=num2=num3 ;
		      확인 하는 코드를 작성하고, 그 결과에 대해 설명. */
		
		int num1 = 10;
		int num2 = 20;
		int num3 = 30;
		
		num1=num2=num3;             
		// 대입연산이므로 오른쪽에서 왼쪽으로 진행.
		// num2에 num3의 값인 30 대입 ㅡ> num1에 num2의 값인 30 대입
		// 최종적으로 세변수의 값이 같아진다. 
					
		System.out.println(num1);  	//결과 30 출력          
		System.out.println(num2);	//결과 30 출력      
		System.out.println(num3);	//결과 30 출력            
	

		
	}

}


